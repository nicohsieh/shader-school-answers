mat2 matrixPower(highp mat2 m, const int n) {
  
  //Raise the matrix m to nth power
  //note: for loop has to be constrained by a const or hard coded number 
  //reference: http://stackoverflow.com/questions/18925615/for-loop-in-shader-code-working-with-hardcoded-number-but-not-with-uniform-varia

  highp mat2 p = mat2(1.0);
  for(int i=0; i<16; i++) {
  	if(i==n) return p;
  	p *= m;
  }

  return m;  
}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)