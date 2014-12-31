#version 410

in vec2 uv;
out vec4 result_color;

uniform sampler2D frameTexture;
uniform int blurSize;
uniform float pixelSizeH;
uniform float pixelSizeV;

void main()
{
	int rad2 = blurSize / 2;
	vec4 sum = vec4(0.0);

    for (int x = -rad2; x <= rad2; x++) {
    	for (int y = -rad2; y <= rad2; y++) {
    	    sum += texture(frameTexture, vec2(uv.x + x * pixelSizeH, uv.y + y * pixelSizeV)) / (blurSize * blurSize);
    	}
    }

	result_color = sum;
}