class Translate extends Matrix{
  
//  | 1, 0, 0, 0 |
//  | 0, 1, 0, 0 |
//  | 0, 0, 1, 0 |
//  | x, y, z, 1 |
                       
  Translate(float tx, float ty, float tz){
    matrix[0][0] = 1;
    matrix[1][1] = 1;
    matrix[2][2] = 1;
    matrix[3][3] = 1;
    matrix[3][0] = tx;
    matrix[3][1] = ty;
    matrix[3][2] = tz;
    
  }
  
}