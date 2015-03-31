precision highp float;

attribute vec3 position;

uniform mat4 model, view, projection;

vec4 transformPoint(mat4 transform, vec4 point) {
  return transform * point;
}

void main() {

  //transform position in model, view, projection order
  vec4 newPos = vec4(position, 1.0);
  newPos = transformPoint(model, newPos);
  newPos = transformPoint(view, newPos);
  newPos = transformPoint(projection, newPos);

  gl_Position = vec4(newPos);
}

