#define UPSWEEP()                                       \
if (offset * (2 * thread_id + 2) - 1 < buffer_size) {   \
    int i = offset * (2 * thread_id + 1) - 1;           \
    int j = offset * (2 * thread_id + 2) - 1;           \
    data[j] += data[i];                                 \
}

#define DOWNSWEEP()                                     \
if (offset * (2 * thread_id + 2) - 1 < buffer_size) {   \
    int i = offset * (2 * thread_id + 1) - 1;           \
    int j = offset * (2 * thread_id + 2) - 1;           \
    data[j] += data[i];                                 \
    data[i] = data[j] - data[i];                        \
}

__kernel void upsweep(__global float *data, unsigned int buffer_size, unsigned int offset) {
    int thread_id = get_global_id(0);
    while (buffer_size / (offset * 2) > 0) {
        barrier(CLK_GLOBAL_MEM_FENCE);
        UPSWEEP()
        offset *= 2;
    }
}

__kernel void downsweep(__global float *data, unsigned int buffer_size, unsigned int offset) {
    int thread_id = get_global_id(0);

    if (thread_id == 0 && offset == buffer_size / 2) {
        data[buffer_size - 1] = 0;
    }

    while (buffer_size / offset <= 512) {
        barrier(CLK_GLOBAL_MEM_FENCE);
        DOWNSWEEP()
        offset /= 2;
    }
}