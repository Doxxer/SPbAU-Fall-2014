#version 410

in vec4 vertex_coords;
in vec3 normal_coords;
in vec2 tex_coords;

out vs_output
{
   vec2 uv;
} v_out;

uniform mat4 mvp;
uniform mat4 model;
uniform float uv_mult;

void main()
{
    gl_Position = mvp * vertex_coords;
    vec4 worldNormal = model * vec4(normal_coords, 1.0f);
    v_out.uv = tex_coords * uv_mult;
}
