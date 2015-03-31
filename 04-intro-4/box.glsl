bool inBox(highp vec2 lo, highp vec2 hi, highp vec2 p) {

  //Test if the point p is inside the box bounded by [lo, hi]
  bvec2 inBound1 = greaterThan(p,lo);
  bvec2 inBound2 = lessThan(p,hi);
  if(all(inBound1) && all(inBound2)) {
  	return true;
  } else {
  	return false;
  }
}


//Do not change this line or the name of the above function
#pragma glslify: export(inBox)
