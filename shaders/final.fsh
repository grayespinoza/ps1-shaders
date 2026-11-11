#version 330 compatibility

uniform sampler2D colortex0;

const int dither_matrix[16] = int[](-4, 0, -3, 1, 2, -2, 3, -1, -3, 1, -4, 0, 3, -1, 2, -2);

in vec2 texcoord;

/* RENDERTARGETS: 0 */
layout(location = 0) out vec4 color;

void main()
{
  float dither = float(dither_matrix[(int(gl_FragCoord.x) % 4) + (int(gl_FragCoord.y) % 4) * 4]);

  color = texture(colortex0, texcoord);

  color.rgb = floor((color.rgb * 255 + vec3(dither)) / 8) / 31;
}
