#version 410

in vec2 uv;
out vec4 result_color;

uniform sampler2D frameTexture;

void main()
{
	result_color = vec4(0.6, 0.2, 0.1, 1);
}