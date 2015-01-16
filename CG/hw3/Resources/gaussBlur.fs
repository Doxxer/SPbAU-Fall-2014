#version 410

in vec2 uv;
out vec4 result_color;

uniform sampler2D frameTexture;

uniform float weight[5] = float[](0.2270270270, 0.1945945946, 0.1216216216, 0.0540540541, 0.0162162162);

void main() {
    vec4 result = vec4(0);

    result += texture(frameTexture, uv) * weight[0];
    for (int i = 1; i < 5; i++) {
        result += texture(frameTexture, uv + vec2(i, 0.0)/700.0) * weight[i];
        result += texture(frameTexture, uv - vec2(i, 0.0)/700.0) * weight[i];
    }
    result += texture(frameTexture, uv) * weight[0];
    for (int i = 1; i < 5; i++) {
    	result += texture(frameTexture, uv + vec2(0.0, i)/350.0) * weight[i];
    	result += texture(frameTexture, uv - vec2(0.0, i)/350.0) * weight[i];
    }

    result_color = result / 2.0;
}