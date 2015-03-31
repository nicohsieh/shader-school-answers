precision highp float;

uniform float theta;

attribute vec2 position;

void main() {

  //rotate position by theta radians about the origin
  mat2 m = mat2(cos(theta), -sin(theta),
   			    sin(theta), cos(theta));
  vec2 newPos = vec2(position);
  newPos = newPos*m;
  gl_Position = vec4(newPos, 0, 1.0);
}
