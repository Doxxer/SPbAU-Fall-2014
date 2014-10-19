#version 410

in vec4 vertex_coords;

out vs_output
{
   vec3 color;
} v_out;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

void main()
{
    gl_Position = proj * view * model * vertex_coords;
    v_out.color = vertex_coords.xyz;
}
