#version 410

in vs_output
{
   vec2 uv;
} f_in;

out vec3 color;

uniform sampler2D textureSampler;

void main()
{
    color = texture(textureSampler, f_in.uv).rgb;
}