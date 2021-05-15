class Cube{
  
//    E _________ H
//    /|        /|  
//   / |       / |       
// A/__|_____D/  |       
//  | F|______|__|G      
//  |  /      |  /       
//  | /       | /        
//  |/________|/         
// B          C          

  Quad quads [] = new Quad [6];
  Vector A, B, C, D, E, F, G, H;

  
  Cube(Vector a, Vector b, Vector c, Vector d, Vector e, Vector f, Vector g, Vector h){
    A = a;
    B = b;
    C = c;
    D = d;
    E = e;
    F = f;
    G = g;
    H = h;
    quads[0] = new Quad(a, b, c, d);
    quads[1] = new Quad(d, c, g, h);
    quads[2] = new Quad(h, g, f, e);
    quads[3] = new Quad(e, f, b, a);
    quads[4] = new Quad(e, a, d, h);
    quads[5] = new Quad(b, f, g, c);
  }
  
  void display(){
    for(int i = 0; i < quads.length; i++){
      for(int j = 0; j < quads[i].triangles.length; j++){
        beginShape();
          vertex(after.triangles[j].A.x * 10, -quads[i].triangles[j].A.y * 10, -quads[i].triangles[j].A.z * 10);
          vertex(after.triangles[j].B.x * 10, -quads[i].triangles[j].B.y * 10, -quads[i].triangles[j].B.z * 10);
          vertex(after.triangles[j].C.x * 10, -quads[i].triangles[j].C.y * 10, -quads[i].triangles[j].C.z * 10);
        endShape(CLOSE);
      }
    }
  }
}