layout(location = 0) out vec4 color;

void voxy_emitFragment(VoxyFragmentParameters parameters)
{
  color = parameters.sampledColour * parameters.tinting;
}
