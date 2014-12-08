#version 410

in vs_output
{
    vec3 normal_view;
    vec3 pos_view;
    vec2 uv;
} f_in;

out vec3 color;

uniform vec3 lightView;
uniform vec3 ambient;
uniform vec3 diffuse;
uniform vec3 specular;
uniform float specularPower;
uniform float specularStrength;
uniform sampler2D textureSampler;

float clamp01(float value) {
    return clamp(value, 0, 1);
}

void main()
{
    vec3 res_color = ambient + diffuse * clamp01(dot(normalize(f_in.normal_view), lightView));
    vec3 reflection = normalize(reflect(f_in.pos_view, f_in.normal_view));
    res_color += specular * specularStrength * pow(clamp01(dot(reflection, lightView)), specularPower);

    color = texture(textureSampler, f_in.uv).rgb;
    color -= res_color;
}