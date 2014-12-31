#version 410

in vec4 vertex_coords;

out vec2 uv;

void main()
{
    gl_Position = vertex_coords;
    uv = (vertex_coords.xy + vec2(1, 1)) / 2.0;
}
