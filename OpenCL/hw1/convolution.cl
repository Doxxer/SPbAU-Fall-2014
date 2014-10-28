__kernel void convolution(__global float * first,
                          __global float * second,
                          __global float * output,
                          int firstSize,
                          int secondSize)
{
   int idx_x = get_global_id(0);
   int idx_y = get_global_id(1);

   float result = 0.0;
   for (int i = 0; i < secondSize; ++i) {
	   for (int j = 0; j < secondSize; ++j) {
		   int input_idx_x = idx_x + i - secondSize / 2;
		   int input_idx_y = idx_y + j - secondSize / 2;

		   if (input_idx_x >= 0 && input_idx_x < firstSize && input_idx_y >= 0 && input_idx_y < firstSize)
			   result += first[input_idx_x * firstSize + input_idx_y] * second[i * secondSize + j];
	   }
   }

   output[idx_x * firstSize + idx_y] = result;
}