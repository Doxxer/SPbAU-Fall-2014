#ifndef OPENCL_HARDWARE_HPP
#define OPENCL_HARDWARE_HPP

#include "cl.hpp"
#include <iostream>
#include <fstream>
#include <vector>

using cl::Platform;
using cl::Device;
using cl::Context;
using cl::Program;
using std::vector;
using std::cerr;
using std::cout;
using std::endl;
using std::string;

Platform getCurrentPlatform(int platformIndex = -1) {
    vector<Platform> platforms;
    Platform::get(&platforms);
    if (platforms.size() == 0) {
        cerr << "No platforms found" << endl;
        exit(1);
    }
    if (platforms.size() != 1 && platformIndex == -1) {
        cerr << "Found ceveral platforms:" << endl;
        for (size_t i = 0; i < platforms.size(); ++i) {
            cerr << "platform [" << i << "]: " << platforms[i].getInfo<CL_PLATFORM_NAME>() << endl;
        }
        cerr << "Pass the correct index [platformIndex] into getCurrentPlatform function" << endl;
        exit(1);
    }

    Platform platform = platforms.size() == 1 ? platforms[0] : platforms[platformIndex];
    cout << "Current using platform: " << platform.getInfo<CL_PLATFORM_NAME>() << endl;
    return platform;
}

Device getCurrentDevice(Platform &platform, int deviceIndex = -1) {
    vector<Device> devices;
    platform.getDevices(CL_DEVICE_TYPE_GPU, &devices);
    if (devices.size() == 0) {
        cerr << "No devices found" << endl;
        exit(1);
    }
    if (devices.size() != 1 && deviceIndex == -1) {
        cerr << "Found ceveral devices:" << endl;
        for (size_t i = 0; i < devices.size(); ++i) {
            cerr << "device [" << i << "]: " << devices[i].getInfo<CL_DEVICE_NAME>() << endl;
        }
        cerr << "Pass the correct index [platformIndex] into getCurrentPlatform function" << endl;
        exit(1);
    }
    Device device = devices.size() == 1 ? devices[0] : devices[deviceIndex];
    cout << "Current using device: " << device.getInfo<CL_DEVICE_NAME>() << endl;
    return device;
}

Program createProgram(Device &device, Context &context, string const &programFileName) {
    std::ifstream file(programFileName);
    if (file.fail()) {
        cerr << "File " << programFileName << " not found";
        exit(1);
    }
    string code(std::istreambuf_iterator<char>(file), (std::istreambuf_iterator<char>()));
    Program::Sources sources(1, std::make_pair(code.c_str(), code.length() + 1));

    Program program(context, sources);
    try {
        program.build({device});
    } catch (cl::Error &e) {
        cerr << " Error building: " << program.getBuildInfo<CL_PROGRAM_BUILD_LOG>(device) << endl;
        throw;
    }
    cout << "Program " << programFileName << " built successful" << endl;
    return program;
}


#endif /* end of include guard: OPENCL_HARDWARE_HPP */
