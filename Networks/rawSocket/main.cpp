#include <cstdio>
#include <stdlib.h>
#include <cerrno>
#include <string>
#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/in_systm.h>
#include <netinet/ip.h>
#include <netinet/ip_icmp.h>
#include <unistd.h>
#include <sys/time.h>
#include <arpa/inet.h>

using std::string;
using std::cerr;
using std::cout;
using std::endl;

#define MAX_PACKET_LEN 4096

uint16_t checkSum(uint16_t *data, uint32_t size) {
    uint32_t sum;
    for (sum = 0; size > 1; size -= sizeof(uint16_t))
        sum += *data++;
    if (size == 1)
        sum += (char) *data;
    sum = (sum >> 16) + (sum & 0xFFFF);
    sum += (sum >> 16);
    return (uint16_t) ~sum;
}

long getTimestamp() {
    timeval time;
    gettimeofday(&time, NULL);
    return (time.tv_sec % (24 * 60 * 60)) * 1000 + time.tv_usec / 1000;
}

bool checkPacket(icmp *packet) {
    if (packet == 0) {
        return false;
    }

    u_short cksum = packet->icmp_cksum;
    packet->icmp_cksum = 0;

    uint16_t checkSum1 = checkSum((uint16_t *) packet, sizeof(*packet));
    bool result = (cksum == checkSum1);
    printf("%d %d\n", cksum, checkSum1);
    packet->icmp_cksum = cksum;
    return result;
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        cout << "Usage: sudo ./time <NTP server IP>" << endl;
        return 0;
    }
    string ntpServerIP = string(argv[1]);

    int icmpSocket = socket(PF_INET, SOCK_RAW, IPPROTO_ICMP);
    if (icmpSocket < 0) {
        int errorNumber = errno;
        cerr << "Unable to create socket: ";
        if (errorNumber == EPERM) {
            cerr << "sudo mode required" << endl;
        }
        return EXIT_FAILURE;
    }

    timeval timeout = {0};
    timeout.tv_sec = 2;
    setsockopt(icmpSocket, SOL_SOCKET, SO_RCVTIMEO, (char *) &timeout, sizeof(timeval));

    long timestamp = getTimestamp();

    icmp icmpPacket = {0};
    icmpPacket.icmp_type = ICMP_TSTAMP;
    icmpPacket.icmp_code = 0;
    icmpPacket.icmp_id = (n_short) getpid();
    icmpPacket.icmp_otime = htonl(timestamp);
    icmpPacket.icmp_rtime = 0;
    icmpPacket.icmp_ttime = 0;
    icmpPacket.icmp_cksum = checkSum((uint16_t *) &icmpPacket, sizeof(icmpPacket));

    sockaddr_in destination = {0};
    destination.sin_family = PF_INET;
    if (inet_pton(PF_INET, ntpServerIP.c_str(), &destination.sin_addr) != 1) {
        cerr << "IP address " << ntpServerIP << " is invalid" << endl;
    }

    ssize_t bytesSent = sendto(icmpSocket, &icmpPacket, sizeof(icmpPacket), 0,
            (sockaddr const *) &destination, sizeof(destination));

    if (bytesSent < 0 || bytesSent != sizeof(icmpPacket)) {
        int errorNumber = errno;
        cerr << "SendTo error. Bytes sent: " << bytesSent << " and packet size was " << sizeof(icmpPacket) << endl;
        switch (errorNumber) {
            case EHOSTDOWN:
            case EHOSTUNREACH:
                cerr << "host with IP " << ntpServerIP << " not found" << endl;
            default:
                break;
        }
        return EXIT_FAILURE;
    }

    icmp *icmpReceivedPacket = NULL;
    do {
        char receivedPacket[MAX_PACKET_LEN];
        ssize_t bytesReceived = recv(icmpSocket, receivedPacket, MAX_PACKET_LEN, 0);
        if (bytesReceived < 0) {
            int errorNumber = errno;
            cerr << "Receive error #" << errorNumber << endl;
            return EXIT_FAILURE;
        }
        icmpReceivedPacket = (icmp *) (receivedPacket + (((ip *) receivedPacket)->ip_hl << 2));
    } while (icmpReceivedPacket->icmp_type != ICMP_TSTAMPREPLY);
    close(icmpSocket);

//    checkPacket(icmpReceivedPacket);

    long currentTime = getTimestamp();

    long travelTime = (
            (ntohl(icmpReceivedPacket->icmp_rtime) - ntohl(icmpReceivedPacket->icmp_otime)) +
                    (currentTime - ntohl(icmpReceivedPacket->icmp_ttime))) / 2;

    long delta = (ntohl(icmpReceivedPacket->icmp_rtime) - ntohl(icmpReceivedPacket->icmp_otime)) - travelTime;

    printf("Local %li ms\n", currentTime);
    printf("TravelTime %li ms\n", travelTime);
    printf("Delta = %li ms\n", delta);

//    printf("originate = %u, "
//            "receive = %u, "
//            "transmite: = %u, "
//            "RTT = %li ms\n"
//            "difference = %u ms\n"
//            "should correct time by (differece - RTT/2) %li ms\n",
//            ntohl(icmpReceivedPacket->icmp_otime), // orig
//            ntohl(icmpReceivedPacket->icmp_rtime), // recv
//            ntohl(icmpReceivedPacket->icmp_ttime), // transmit
//            timestampEnd - timestamp, // RTT
//            ntohl(icmpReceivedPacket->icmp_rtime) - ntohl(icmpReceivedPacket->icmp_otime),
//            (ntohl(icmpReceivedPacket->icmp_rtime) - ntohl(icmpReceivedPacket->icmp_otime)) - (timestampEnd - timestamp) / 2);
    return 0;
}