#version 330

in vec2 in_pos;

out vs_output
{
   vec3 color;
} v_out;

uniform mat4 mvp;

void main()
{
   //gl_Position = vec4(in_pos, 0, 1);
   gl_Position = mvp * vec4(in_pos, 0, 1);

   v_out.color = vec3(1, 0.5, 0);
}
