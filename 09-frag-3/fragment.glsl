precision highp float;

uniform sampler2D texture;
uniform vec2 screenSize;

void main() {
  vec2 coord = gl_FragCoord.xy / screenSize;

  //swap red and blue color channels of image

  gl_FragColor = texture2D(texture, coord);
  float r = gl_FragColor.r, b = gl_FragColor.b;
  gl_FragColor.r = b;
  gl_FragColor.b = r;
}
