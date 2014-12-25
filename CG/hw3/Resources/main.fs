#version 410

in vs_output
{
    vec2 uv;
    vec3 eyeDirection;
    vec3 lightDirection;
} f_in;

out vec3 result_color;

uniform struct Light {
	vec3 color;
	vec3 specularColor;
	float ambientPower;
	float diffusePower;
	float specularPower;
} light;

uniform sampler2D textureBrick;
uniform sampler2D textureNormal;

float clamp01(float value) {
    return clamp(value, 0, 1);
}

void main()
{
	vec3 textureColor = texture(textureBrick, f_in.uv).rgb;

	// ambient
	vec3 ambient = light.ambientPower * textureColor * light.color;

	// diffuse
	vec3 n = normalize(texture(textureNormal, f_in.uv).rgb * 2.0 - 1.0);
	vec3 l = normalize(f_in.lightDirection);
	float diffuseCoefficient = clamp01(dot(n, l));
	vec3 diffuse = diffuseCoefficient * textureColor * light.color * light.diffusePower;

	// specular
	vec3 eye = normalize(f_in.eyeDirection);
	float specularCoefficient = 0.0;
	if (diffuseCoefficient > 0.2) {
		specularCoefficient = pow(clamp01(dot(eye, reflect(-l, n))), light.specularPower);
	}
	vec3 specular = specularCoefficient * light.specularColor * light.color;

	result_color = ambient + diffuse + specular;
}