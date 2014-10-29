__kernel void convolution(__global float * first,
                          __global float * second,
                          __global float * output,
                          int firstSize,
                          int secondSize)
{
   int row = get_global_id(0);
   int col = get_global_id(1);

   if (row >= firstSize || col >= firstSize)
        return;

   float result = 0.0;
   for (int i = 0; i < secondSize; ++i) {
	   for (int j = 0; j < secondSize; ++j) {
		   int input_idx_x = row + i - secondSize / 2;
		   int input_idx_y = col + j - secondSize / 2;

		   if (input_idx_x >= 0 && input_idx_x < firstSize && input_idx_y >= 0 && input_idx_y < firstSize)
			   result += first[input_idx_x * firstSize + input_idx_y] * second[i * secondSize + j];
	   }
   }

   output[row * firstSize + col] = result;
}