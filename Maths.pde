class Maths{

  Maths(){
    //This should be a library or something called maths or something.
  }
  
  Vector vectorByMatrix(Vector before, Matrix matrix){
    Vector after = new Vector(0, 0, 0);
    after.x = before.x * matrix.matrix[0][0] + before.y * matrix.matrix[1][0] + before.z * matrix.matrix[2][0] + before.h * matrix.matrix[3][0];
    after.y = before.x * matrix.matrix[0][1] + before.y * matrix.matrix[1][1] + before.z * matrix.matrix[2][1] + before.h * matrix.matrix[3][1];
    after.z = before.x * matrix.matrix[0][2] + before.y * matrix.matrix[1][2] + before.z * matrix.matrix[2][2] + before.h * matrix.matrix[3][2];
    after.h = before.x * matrix.matrix[0][3] + before.y * matrix.matrix[1][3] + before.z * matrix.matrix[2][3] + before.h * matrix.matrix[3][3];
    return after;
  }
  
  Matrix multiply(Matrix one, Matrix two){
    Matrix result = new Matrix();
    for (int i = 0; i < 4; i++)
      for (int j = 0; j < 4; j++)
        for (int k = 0; k < 4; k++)
          result.matrix[i][j] += one.matrix[k][j] * two.matrix[i][k];
    return result;
  }

  
  
  void dotProduct(Vector v){
    
  }
  
  void crossProduct(Vector v){
    
  }
  
}