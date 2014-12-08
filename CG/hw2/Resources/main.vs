#version 410

in vec4 vertex_coords;
in vec3 normal_coords;
in vec2 tex_coords;

out vs_output
{
   vec3 normal_view;
   vec3 pos_view;
   vec2 uv;
} v_out;

uniform mat4 mvp;
uniform mat4 modelView;
uniform mat3 normalsMatrix;
uniform float uv_mult;

void main()
{
    gl_Position = mvp * vertex_coords;

    // for lighting
    v_out.pos_view = (modelView * vertex_coords).xyz;
    v_out.normal_view = normalsMatrix * normal_coords;

    // texture coords
    v_out.uv = tex_coords * uv_mult;
}
