vec3 bisector(vec3 a, vec3 b) {
  return normalize(length(b) * a + length(a) * b);
}

highp vec2 func(highp vec2 a, highp vec2 b) {

  vec3 bi = bisector(vec3(a,0), vec3(b,0));
  vec2 bi2 = bi.xy;
  return bi2;
}



//Do not change this line
#pragma glslify: export(func)