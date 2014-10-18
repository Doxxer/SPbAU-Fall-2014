#version 410

in vs_output
{
   vec3 color;
} f_in;

out vec3 o_color;

void main()
{
    int x = int(gl_FragCoord.x);
    int y = int(gl_FragCoord.y);
    if ((x / 10 & 1) == (y / 10 & 1))
        discard;
    o_color = f_in.color;
}