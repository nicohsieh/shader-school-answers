void sideLengths(
  highp float hypotenuse, 
  highp float angleInDegrees, 
  out highp float opposite, 
  out highp float adjacent) {

  const highp float PI = 3.1415926;
  highp float rad = radians(angleInDegrees);

  opposite = hypotenuse*sin(rad);
  adjacent = hypotenuse*cos(rad);
}

//Do not change this line
#pragma glslify: export(sideLengths)