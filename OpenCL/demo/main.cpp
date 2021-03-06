#define __CL_ENABLE_EXCEPTIONS
#include <OpenCL/opencl.h>
#include "cl.hpp"

#include <fstream>
#include <iostream>
#include <iomanip>

int main() {
    std::vector<cl::Platform> platforms;
    std::vector<cl::Device> devices;
    std::vector<cl::Kernel> kernels;

    try {
        // create platform
        cl::Platform::get(&platforms);
        platforms[0].getDevices(CL_DEVICE_TYPE_GPU, &devices);

        // create context
        cl::Context context(devices);

        // create command queue
        cl::CommandQueue queue(context, devices[0], CL_QUEUE_PROFILING_ENABLE);

        // load opencl source
        std::ifstream cl_file("vector_add.cl");
        std::string cl_string(std::istreambuf_iterator<char>(cl_file), (std::istreambuf_iterator<char>()));
        cl::Program::Sources source(1, std::make_pair(cl_string.c_str(), cl_string.length() + 1));

        // create program
        cl::Program program(context, source);

        // compile opencl source
        try {
            program.build(devices);
        }
        catch (cl::Error const &e) {
            std::string log_str = program.getBuildInfo<CL_PROGRAM_BUILD_LOG>(devices[0]);
            std::cout << std::endl << e.what() << " : " << e.err() << std::endl;
            std::cout << log_str;
            return 0;
        }

        // create a message to send to kernel
        size_t const block_size = 512;
        int const test_array_size = 1024;

        std::vector<int> a(test_array_size);
        std::vector<int> b(test_array_size);
        std::vector<int> c(test_array_size, 1);
        for (int i = 0; i < test_array_size; ++i) {
            a[i] = i;
            b[i] = i * 2;
        }

        // allocate device buffer to hold message
        cl::Buffer dev_a(context, CL_MEM_READ_ONLY, sizeof(int) * test_array_size);
        cl::Buffer dev_b(context, CL_MEM_READ_ONLY, sizeof(int) * test_array_size);
        cl::Buffer dev_c(context, CL_MEM_WRITE_ONLY, sizeof(int) * test_array_size);

        // copy from cpu to gpu
        queue.enqueueWriteBuffer(dev_a, CL_TRUE, 0, sizeof(int) * test_array_size, &a[0]);
        queue.enqueueWriteBuffer(dev_b, CL_TRUE, 0, sizeof(int) * test_array_size, &b[0]);

        // load named kernel from opencl source
        cl::Kernel kernel_lmem(program, "vector_add");
        cl::KernelFunctor vector_add(kernel_lmem, queue, cl::NullRange, cl::NDRange(test_array_size), cl::NDRange(block_size));
        cl::Event event = vector_add(dev_a, dev_b, dev_c, test_array_size);

        queue.enqueueReadBuffer(dev_c, CL_TRUE, 0, sizeof(int) * test_array_size, &c[0]);

        for (size_t i = 0; i < test_array_size; ++i)
            std::cout << c[i] << std::endl;
        std::cout << std::endl;
    }
    catch (cl::Error const &e) {
        std::cout << std::endl << e.what() << " : " << e.err() << std::endl;
    }

    return 0;
}