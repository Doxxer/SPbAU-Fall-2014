#version 410

in vec2 uv;
out vec4 result_color;

uniform sampler2D frameTexture;

const float blurSizeH = 1.0 / 300.0;
const float blurSizeV = 1.0 / 200.0;

void main()
{
	vec4 sum = vec4(0.0);
    for (int x = -1; x <= 1; x++) {
    	for (int y = -1; y <= 1; y++) {
    	    sum += texture(frameTexture, vec2(uv.x + x * blurSizeH, uv.y + y * blurSizeV)) / 9.0;
    	}
    }

	// result_color = texture(frameTexture, uv);

	result_color = sum;
}