precision highp float;

attribute vec4 position;
attribute vec3 color;

varying vec3 vColor;

void main() {
  //passing the color through
  vColor = color;
  gl_Position = position;
}