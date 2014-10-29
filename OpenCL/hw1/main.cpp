#define __CL_ENABLE_EXCEPTIONS

#include "cl.hpp"
#include <fstream>
#include <iostream>
#include <iomanip>

typedef float element_type;

void readMatrix(std::ifstream &input, std::vector<element_type> &matrix, size_t size) {
    matrix.resize(size * size);
    for (size_t i = 0; i < size; ++i) {
        for (size_t j = 0; j < size; ++j) {
            input >> matrix[i * size + j];
        }
    }
}

void writeMatrix(std::ofstream &output, std::vector<element_type> const &matrix, size_t size) {
    output << std::fixed << std::setprecision(3);

    for (size_t i = 0; i < size; ++i) {
        for (size_t j = 0; j < size; ++j) {
            output << matrix[i * size + j] << " ";
        }
        output << std::endl;
    }
}

int main() {
    std::vector<cl::Platform> platforms;
    std::vector<cl::Device> devices;
    std::vector<cl::Kernel> kernels;

    size_t firstMatrixSize, secondMatrixSize;
    std::vector<element_type> firstMatrix, secondMatrix, resultMatrix;

    try {
        // input and output streams
        std::ifstream inputStream("input.txt");
        std::ofstream outputStream("output.txt");

        // create platform
        cl::Platform::get(&platforms);
        platforms[0].getDevices(CL_DEVICE_TYPE_GPU, &devices);

//        std::cout << platforms[0].getInfo<CL_PLATFORM_NAME>() << std::endl;
//        std::cout << devices[0].getInfo<CL_DEVICE_NAME>() << std::endl;
        // create context
        cl::Context context(devices);

        // create command queue
        cl::CommandQueue queue(context, devices[0], CL_QUEUE_PROFILING_ENABLE);

        // load opencl source
        std::ifstream cl_file("convolution.cl");
        std::string cl_string(std::istreambuf_iterator<char>(cl_file), (std::istreambuf_iterator<char>()));
        cl::Program::Sources source(1, std::make_pair(cl_string.c_str(), cl_string.length() + 1));

        // create program
        cl::Program program(context, source);

        // compile opencl source
        program.build(devices);

        // prepare data
        inputStream >> firstMatrixSize >> secondMatrixSize;
        readMatrix(inputStream, firstMatrix, firstMatrixSize);
        readMatrix(inputStream, secondMatrix, secondMatrixSize);

        // create a message to send to kernel
        size_t const block_size = 16;

        // allocate device buffer to hold message
        cl::Buffer dev_first(context, CL_MEM_READ_ONLY, sizeof(element_type) * firstMatrix.size());
        cl::Buffer dev_second(context, CL_MEM_READ_ONLY, sizeof(element_type) * secondMatrix.size());
        cl::Buffer dev_output(context, CL_MEM_WRITE_ONLY, sizeof(element_type) * firstMatrix.size());

        // copy from cpu to gpu
        queue.enqueueWriteBuffer(dev_first, CL_TRUE, 0, sizeof(element_type) * firstMatrix.size(), &firstMatrix[0]);
        queue.enqueueWriteBuffer(dev_second, CL_TRUE, 0, sizeof(element_type) * secondMatrix.size(), &secondMatrix[0]);
        queue.finish();

        // align global_size to block_size
        // it's just ceil(M/block)*block in integer numbers
        size_t global_size = ((firstMatrixSize + block_size - 1) / block_size) * block_size;

        // load named kernel from opencl source
        cl::Kernel kernel(program, "convolution");
        cl::KernelFunctor convolution(kernel, queue, cl::NullRange, cl::NDRange(global_size, global_size), cl::NDRange(block_size, block_size));
        cl::Event event = convolution(dev_first, dev_second, dev_output, firstMatrixSize, secondMatrixSize);
        event.wait();

        auto start_time = event.getProfilingInfo<CL_PROFILING_COMMAND_START>();
        auto end_time = event.getProfilingInfo<CL_PROFILING_COMMAND_END>();
        cl_ulong elapsed_time = end_time - start_time;

        resultMatrix.resize(firstMatrix.size());
        queue.enqueueReadBuffer(dev_output, CL_TRUE, 0, sizeof(element_type) * firstMatrix.size(), &resultMatrix[0]);

        writeMatrix(outputStream, resultMatrix, firstMatrixSize);
        std::cerr << std::setprecision(2) << "Total time: " << elapsed_time / 1000000.0 << " ms" << std::endl;
    }
    catch (cl::Error const &e) {
        std::cout << std::endl << e.what() << " : " << e.err() << std::endl;
    }

    return 0;
}