precision mediump float;

attribute vec3 position;
attribute vec3 normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 inverseModel;
uniform mat4 inverseView;
uniform mat4 inverseProjection;

uniform vec3 ambient;
uniform vec3 diffuse;
uniform vec3 lightDirection;

varying vec3 color;

vec3 reflectedLight(
  vec3 normal,
  vec3 lightDirection,
  vec3 ambient,
  vec3 diffuse
) {
  float brightness = dot(normal, lightDirection);
  return ambient + diffuse * max(brightness, 0.0);
}

void main() {

  vec4 inversedSurfaceNormal = inverseModel*vec4(normal, 0.0);
  vec4 inversedLight = inverseView*vec4(lightDirection, 0.0);
  color = reflectedLight(vec3(inversedSurfaceNormal.xyz), vec3(inversedLight.xyz), ambient, diffuse);

  gl_Position = projection*view*model*vec4(position, 1.0);
}
