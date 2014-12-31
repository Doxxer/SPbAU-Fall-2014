#version 410

in vec2 uv;
out vec4 result_color;

uniform sampler2D frameTexture;

void main()
{
	result_color = texture(frameTexture, uv);
}