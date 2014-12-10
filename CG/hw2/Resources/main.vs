#version 410

in vec4 vertex_coords;
in vec3 normal_coords;
in vec3 tangent_coords;
in vec3 bitangent_coords;
in vec2 uv_coords;

out vs_output
{
   vec2 uv;
   vec3 eyeDirection;
   vec3 lightDirection;
} v_out;

uniform mat4 mvp;
uniform mat4 view;
uniform mat4 model;
uniform mat3 modelView33;
uniform vec3 lightDirection;
uniform float uv_mult;

void main()
{
    gl_Position = mvp * vertex_coords;

    v_out.uv = uv_coords * uv_mult;

    vec3 t_c = modelView33 * tangent_coords;
    vec3 b_c = modelView33 * bitangent_coords;
    vec3 n_c = modelView33 * normal_coords;
    mat3 TBN = inverse(mat3(t_c, b_c, n_c));

    v_out.lightDirection = TBN * (-lightDirection);
    v_out.eyeDirection = TBN * (-(view * model * vertex_coords).xyz);
}
