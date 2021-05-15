class Scale extends Matrix{
  
//  | x, 0, 0, 0 |
//  | 0, y, 0, 0 |
//  | 0, 0, z, 0 |
//  | 0, 0, 0, 1 |
                       
  Scale(float sx, float sy, float sz){
    matrix[0][0] = sx;
    matrix[1][1] = sy;
    matrix[2][2] = sz;
    matrix[3][3] = 1;
  }
  
}