vec3 reflectPoint(vec3 p, vec3 n) {
  return p - 2.0 * dot(n, p) * n / dot(n, n);
}

highp mat4 reflection(highp vec3 n) {

  n = normalize(n);
  //reflect each column of a transfrom matrix along the axis of n
  vec3 col1 = reflectPoint(vec3(1.0, 0, 0), n);
  vec3 col2 = reflectPoint(vec3(0, 1.0, 0), n);
  vec3 col3 = reflectPoint(vec3(0, 0, 1.0), n);
  mat4 m = mat4(vec4(col1, 0), vec4(col2,0), vec4(col3,0), vec4(0,0,0,1));
    
  return m;
}


#pragma glslify: export(reflection)