#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedMacroInspection"
#define __CL_ENABLE_EXCEPTIONS

#include "cl.hpp"
#include "util.hpp"
#include "opencl_hardware.hpp"
#include <iomanip>

typedef float element_type;

void readArray(std::ifstream &input, std::vector<element_type> &array, size_t size) {
    array.resize(size);
    for (size_t i = 0; i < size; ++i) {
        input >> array[i];
    }
}

void writeArray(std::ostream &output, std::vector<element_type> const &array, size_t size) {
    output << std::fixed << std::setprecision(3);

    for (size_t i = 0; i < size; ++i) {
        output << array[i] << " ";
    }
    output << std::endl;
}

void solve(Device &device, Context &context, Program &program) {
    std::ifstream inputStream("input.txt");
    std::ofstream outputStream("output.txt");

    size_t arraySize;
    vector<element_type> input_array, result_array;
    inputStream >> arraySize;
    readArray(inputStream, input_array, arraySize);
    result_array.resize(input_array.size());

    cl::CommandQueue queue(context, device);

    size_t buffers_size = upper_power_of_two(arraySize);

    cl::Buffer data(context, CL_MEM_READ_ONLY, sizeof(element_type) * buffers_size);
    queue.enqueueWriteBuffer(data, CL_TRUE, 0, sizeof(element_type) * arraySize, input_array.data());

    std::vector<cl::Event> completeEvents;

    for (unsigned int offset = 1; buffers_size / offset > 256; offset *= 2) {
        cl::KernelFunctor functor(cl::Kernel(program, "upsweep"), queue, cl::NullRange, cl::NDRange(buffers_size / offset), cl::NDRange(256));
        completeEvents.push_back(functor.operator()(data, buffers_size, offset));
    }
    if (buffers_size <= 256) {
        cl::KernelFunctor functor(cl::Kernel(program, "upsweep"), queue, cl::NullRange, cl::NDRange(256), cl::NDRange(256));
        completeEvents.push_back(functor.operator()(data, buffers_size, 1));
    }

    {
        cl::KernelFunctor functor(cl::Kernel(program, "downsweep"), queue, cl::NullRange, cl::NDRange(256), cl::NDRange(256));
        completeEvents.push_back(functor.operator()(data, buffers_size, buffers_size / 2));
    }
    for (size_t offset = buffers_size / 1024; offset > 0; offset /= 2) {
        cl::KernelFunctor functor(cl::Kernel(program, "downsweep"), queue, cl::NullRange, cl::NDRange(buffers_size / offset), cl::NDRange(256));
        completeEvents.push_back(functor.operator()(data, buffers_size, offset));
    }

    queue.enqueueReadBuffer(data, CL_TRUE, 0, sizeof(element_type) * arraySize, result_array.data(), &completeEvents);

    writeArray(outputStream, result_array, arraySize);
}

int main(int argc, char *argv[]) {
    try {
        Platform currentPlatform = getCurrentPlatform();
        Device currentDevice = getCurrentDevice(currentPlatform);
        Context context({currentDevice});
        Program program = createProgram(currentDevice, context, "scan.cl");
        solve(currentDevice, context, program);
    } catch (cl::Error const &e) {
        cout << endl << e.what() << " : " << e.err() << endl;
        exit(1);
    }
    return 0;
}

#pragma clang diagnostic pop