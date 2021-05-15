class Triangle{
  
// A
//  |\
//  | \
//  |  \
//  |___\
// B     C

  Vector A, B, C;
  
  Triangle(){
    
  }
  
  Triangle(Vector a, Vector b, Vector c){
    A = a;
    B = b;
    C = c;
  }
  
  void display(){
    beginShape();
    vertex(before.A.x * 10, -before.A.y * 10, before.A.z * 10);
    vertex(before.B.x * 10, -before.B.y * 10, before.B.z * 10);
    vertex(before.C.x * 10, -before.C.y * 10, before.C.z * 10);
  endShape(CLOSE);
  }
}