#version 410

in vs_output
{
   vec3 color;
   vec4 pos;
} f_in;

out vec3 o_color;

void main()
{
    vec2 xy = abs(f_in.pos.xy + 100) * 100.0;

    if ((int(xy.x) / 10 & 1) == (int(xy.y) / 10 & 1))
        discard;
    o_color = f_in.color;
}