//Rodrigues' rotation formula
vec3 rotatePoint(vec3 p, vec3 n, float theta) {
  return (
    p * cos(theta) + cross(n, p) *
    sin(theta) + n * dot(p, n) *
    (1.0 - cos(theta))
  );
}

highp mat4 rotation(highp vec3 n, highp float theta) {

  n = normalize(n);	
  //rotate each column of matrix using Rodrigues' rotation formula;
  vec3 col1 = rotatePoint(vec3(1.0, 0, 0), n, theta);
  vec3 col2 = rotatePoint(vec3(0, 1.0, 0), n, theta);
  vec3 col3 = rotatePoint(vec3(0, 0, 1.0), n, theta);
  mat4 m = mat4(vec4(col1, 0), vec4(col2,0), vec4(col3,0), vec4(0,0,0,1));

  return m;
}

#pragma glslify: export(rotation)