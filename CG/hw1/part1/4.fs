#version 410
#extension GL_ARB_gpu_shader_fp64 : enable

in vs_output
{
   vec3 color;
   vec4 pos;
} f_in;

out vec3 o_color;

void main()
{
    dvec2 c = dvec2(f_in.pos.xy), z = c;
    int i;
    int iter = 1000;

    for(i = 0; i < iter; i++) {
        double x = (z.x * z.x - z.y * z.y) + c.x;
        double y = (z.y * z.x + z.x * z.y) + c.y;
        z.x = x;
        z.y = y;
        if(dot(z, z) > 4.0) break;
    }

    o_color = vec3(i / 1000.0, i / 20.0, i / 300.0);
}