class Quad{
  
// A ____ D
//  |\   |
//  | \  |
//  |  \ |
//  |___\|
// B      C

  Triangle triangles [] = new Triangle [2];
  Vector A, B, C, D;
  
  Quad(Vector a, Vector b, Vector c, Vector d){
    A = a;
    B = b;
    C = c;
    triangles[0] = new Triangle(a, b, c);
    triangles[1] = new Triangle(a, c, d);
  }
  
  void display(){
    for(int j = 0; j < triangles.length; j++){
      beginShape();
        vertex(after.triangles[j].A.x * 10, -triangles[j].A.y * 10, -triangles[j].A.z * 10);
        vertex(after.triangles[j].B.x * 10, -triangles[j].B.y * 10, -triangles[j].B.z * 10);
        vertex(after.triangles[j].C.x * 10, -triangles[j].C.y * 10, -triangles[j].C.z * 10);
      endShape(CLOSE);
    }
  }
  
}