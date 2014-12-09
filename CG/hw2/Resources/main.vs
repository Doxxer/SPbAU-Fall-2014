#version 410

in vec4 vertex_coords;
in vec3 normal_coords;
in vec3 tangent_coords;
in vec3 bitangent_coords;
in vec2 uv_coords;

out vs_output
{
   vec3 vertexCoordsWorldspace;
   vec2 uv;
   vec3 eyeDirection;
   vec3 lightDirection;
} v_out;

uniform mat4 mvp;
uniform mat4 view;
uniform mat4 model;
uniform vec3 lightPosition;
uniform float uv_mult;

void main()
{
    gl_Position = mvp * vertex_coords;

	v_out.vertexCoordsWorldspace = (model * vertex_coords).xyz;
	v_out.eyeDirection = vec3(0, 0, 0) - (view * vertex_coords).xyz;
	v_out.lightDirection = (view * vec4(lightPosition, 1)).xyz + v_out.eyeDirection;

    v_out.uv = uv_coords * uv_mult;
}
