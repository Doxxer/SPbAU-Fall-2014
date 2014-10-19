#version 410

in vec4 vertex_coords;
out vs_output
{
   vec4 position;
} v_out;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

void main()
{
    v_out.position = proj * vertex_coords;
    gl_Position = proj * view * model * vertex_coords;
}
