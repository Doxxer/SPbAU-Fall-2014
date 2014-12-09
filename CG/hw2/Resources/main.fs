#version 410

in vs_output
{
    vec3 vertexCoordsWorldspace;
	vec2 uv;
	vec3 eyeDirection;
	vec3 lightDirection;
} f_in;

out vec3 color;

uniform vec3 ambient;
uniform vec3 specular;
uniform float specularPower;
uniform float specularStrength;

uniform vec3 lightPosition;

uniform sampler2D textureBrick;
uniform sampler2D textureNormal;

float clamp01(float value) {
    return clamp(value, 0, 1);
}

void main()
{
	float power = 30.0f; // TODO to uniform
	vec3 lightColor = vec3(0.4, 0.4, 0.4);

	vec3 diffuse = texture(textureBrick, f_in.uv).rgb;

    float distance = length(lightPosition - f_in.vertexCoordsWorldspace);
    vec3 n = normalize(texture(textureNormal, f_in.uv).rgb);
	vec3 l = normalize(f_in.lightDirection);

	vec3 R = normalize(reflect(-l, n));

	color = ambient +
		diffuse * lightColor * power * clamp01(dot(n, l)) / (distance*distance)
		+ specular * specularPower * pow(clamp01(dot(l, R)), specularStrength) / (distance * distance);
}