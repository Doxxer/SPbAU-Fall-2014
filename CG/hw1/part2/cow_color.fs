#version 410
#define PI 3.1415926535897932384626433832795

in vs_output
{
   vec4 position;
} f_in;

out vec3 o_color;

uniform float timeFromStart;
uniform float N;
uniform float maxDistance;
uniform vec4 center;
uniform float v;
uniform float k;

void main()
{
    o_color = vec3(sin(2 * PI * (v * timeFromStart + length(f_in.position - center) * k / maxDistance)));
}