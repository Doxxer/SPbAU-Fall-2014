#version 410

in vec2 in_pos;

out vs_output
{
   vec3 color;
   vec4 pos;
} v_out;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

void main()
{
    v_out.pos = view * vec4(in_pos, 0, 1);
    gl_Position = proj * view * model * vec4(in_pos, 0, 1);
    v_out.color = vec3(1, 0.5, 0.5);
}
