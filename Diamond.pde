class Diamond{
    
//            .H                                     H
//         E.'/\'.D           E ______ D             /\
//       F.' /  \ '. C         / \  / \             /  \
//         \/____\/         F /___\/___\ C         /    \
//        A \    / B          \  /H \  /           \    /
//           \  /              \/____\/             \  / 
//            \/               A      B              \/
//            G                                      G
//                             

  Triangle triangles [] = new Triangle [12];
  
  Vector A, B, C, D, E, F, G, H;

  
  Diamond(Vector a, Vector b, Vector c, Vector d, Vector e, Vector f, Vector g, Vector h){
    A = a;
    B = b;
    C = c;
    D = d;
    E = e;
    F = f;
    G = g;
    H = h;
    triangles[0] = new Triangle(a, g, b);
    triangles[1] = new Triangle(b, g, c);
    triangles[2] = new Triangle(c, g, d);
    triangles[3] = new Triangle(d, g, e);
    triangles[4] = new Triangle(e, g, f);
    triangles[5] = new Triangle(f, g, a);
    triangles[6] = new Triangle(a, h, b);
    triangles[7] = new Triangle(b, h, c);
    triangles[8] = new Triangle(c, h, d);
    triangles[9] = new Triangle(d, h, e);
    triangles[10] = new Triangle(e, h, f);
    triangles[11] = new Triangle(f, h, a);
    
  }
  
  void display(){
    for(int i = 0; i < before.triangles.length; i++){
      beginShape();
        vertex(triangles[i].A.x * 10, -triangles[i].A.y * 10, -triangles[i].A.z * 10);
        vertex(triangles[i].B.x * 10, -triangles[i].B.y * 10, -triangles[i].B.z * 10);
        vertex(triangles[i].C.x * 10, -triangles[i].C.y * 10, -triangles[i].C.z * 10);
      endShape(CLOSE);
    }
  }
  
}