#version 410

in vec4 vertex_coords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

void main()
{
    gl_Position = proj * view * model * vertex_coords;
}
