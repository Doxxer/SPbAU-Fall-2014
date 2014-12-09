#version 410

in vs_output
{
    vec3 vertexCoordsWorldspace;
	vec2 uv;
	vec3 lightDirection;
} f_in;

out vec3 color;

uniform vec3 ambient;
uniform vec3 specular;
uniform float specularPower;
uniform float specularStrength;

uniform vec3 lightPosition;
uniform vec3 lightColor;
uniform float lightPower;

uniform sampler2D textureBrick;
uniform sampler2D textureNormal;

float clamp01(float value) {
    return clamp(value, 0, 1);
}

void main()
{
	vec3 diffuse = texture(textureBrick, f_in.uv).rgb;

    float distance = length(lightPosition - f_in.vertexCoordsWorldspace);
    vec3 n = normalize(texture(textureNormal, f_in.uv).rgb);
	vec3 l = normalize(f_in.lightDirection);
	vec3 R = normalize(reflect(-l, n));

	color = ambient +
		diffuse * lightColor * lightPower * clamp01(dot(n, l)) / (distance*distance)
		+ specular * specularPower * pow(clamp01(dot(normalize(lightPosition), R)), 1/specularStrength);
}