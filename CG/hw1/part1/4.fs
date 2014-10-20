#version 410
#extension GL_ARB_gpu_shader_fp64 : enable

in vs_output
{
   vec4 pos;
} f_in;

out vec3 o_color;

uniform float scale;
uniform float offset_x;
uniform float offset_y;

void main()
{
    vec4 vertex_coords = vec4(f_in.pos.x + offset_x, f_in.pos.y + offset_y, 0, 1) / scale;
    dvec2 c = dvec2(vertex_coords.xy), z = c;
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