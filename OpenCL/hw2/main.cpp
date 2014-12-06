#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedMacroInspection"
#define __CL_ENABLE_EXCEPTIONS

#include "cl.hpp"
#include <fstream>
#include <iostream>
#include <iomanip>

typedef float element_type;

void readArray(std::ifstream &input, std::vector<element_type> &array, size_t size) {
    array.resize(size);
    for (size_t i = 0; i < size; ++i) {
        input >> array[i];
    }
}

void writeMatrix(std::ofstream &output, std::vector<element_type> const &array, size_t size) {
    output << std::fixed << std::setprecision(3);

    for (size_t i = 0; i < size; ++i) {
        output << array[i] << " ";
    }
    output << std::endl;
}

int main() {
    std::vector<cl::Platform> platforms;
    std::vector<cl::Device> devices;

    size_t arraySize;
    std::vector<element_type> array;

    try {
        // input and output streams
        std::ifstream inputStream("input.txt");
        std::ofstream outputStream("output.txt");

        cl::Platform::get(&platforms);
        platforms[0].getDevices(CL_DEVICE_TYPE_GPU, &devices);
        cl::Context context(devices);
        cl::CommandQueue queue(context, devices[0], CL_QUEUE_PROFILING_ENABLE);

        // load opencl source
        std::ifstream cl_file("scan.cl");
        std::string cl_string(std::istreambuf_iterator<char>(cl_file), (std::istreambuf_iterator<char>()));
        cl::Program::Sources source(1, std::make_pair(cl_string.c_str(), cl_string.length() + 1));

        // create program
        cl::Program program(context, source);

        // compile opencl source
        program.build(devices);

        // prepare data
        inputStream >> arraySize;
        readArray(inputStream, array, arraySize);

        // create a message to send to kernel
        size_t const block_size = 16;

        // allocate device buffer to hold message
        cl::Buffer dev_buffer_array(context, CL_MEM_READ_ONLY, sizeof(element_type) * arraySize);

        // copy from cpu to gpu
        queue.enqueueWriteBuffer(dev_buffer_array, CL_TRUE, 0, sizeof(element_type) * arraySize, array.data());
        queue.finish();

        // load named kernel from opencl source
//        cl::Kernel kernel(program, "convolution");
//        cl::KernelFunctor convolution(kernel, queue, cl::NullRange, cl::NDRange(global_size, global_size), cl::NDRange(block_size, block_size));
//        cl::Event event = convolution.operator()(dev_buffer_array, dev_second, dev_output, arraySize, secondMatrixSize);
//        event.wait();
//
//        auto start_time = event.getProfilingInfo<CL_PROFILING_COMMAND_START>();
//        auto end_time = event.getProfilingInfo<CL_PROFILING_COMMAND_END>();
//        cl_ulong elapsed_time = end_time - start_time;
//
//        resultMatrix.resize(firstMatrix.size());
//        queue.enqueueReadBuffer(dev_output, CL_TRUE, 0, sizeof(element_type) * firstMatrix.size(), &resultMatrix[0]);
//
//        writeMatrix(outputStream, resultMatrix, arraySize);
        std::cerr << std::setprecision(4) << "Total time: " << elapsed_time / 1000000.0 << " ms" << std::endl;
    }
    catch (cl::Error const &e) {
        std::cout << std::endl << e.what() << " : " << e.err() << std::endl;
    }

    return 0;
}

#pragma clang diagnostic pop