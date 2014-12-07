#version 410

in vec4 vertex_coords;
in vec3 normal_coords;

out vs_output
{
   vec3 color;
} v_out;

uniform mat4 mvp;
uniform mat4 model;

void main()
{
    gl_Position = mvp * vertex_coords;
    vec4 worldNormal = model * vec4(normal_coords, 1.0f);
    v_out.color = vec3(worldNormal.y);
}
