uniform float alphaTestRef = 0.1;

layout(location = 0) out vec4 color;

void voxy_emitFragment(VoxyFragmentParameters parameters)
{
  color = parameters.sampledColour * parameters.tinting;
  color *= texture(lightmap, parameters.lightMap);
  if (color.a < alphaTestRef)
  {
    discard;
  }
}
