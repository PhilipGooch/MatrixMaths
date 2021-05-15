class Matrix{
  
  float x, y, z;
  float matrix[][] = { { 0, 0, 0, 0 },
                       { 0, 0, 0, 0 },
                       { 0, 0, 0, 0 },
                       { 0, 0, 0, 0 } };
                       
  Matrix(){
    
  }
  
 
  
  Matrix(float x_, float y_, float z_){
    x = x_;
    y = y_;
    z = z_;
  }
  
  void clearMatrix(){
    for(int i = 0; i < 4; i++){
      for(int j = 0; j < 4; j++){
        matrix[i][j] = 0;
      }
    }
  }
  
  void update(){
    
  }
  
  void setTheta(float theta_){
     
  }

  
  float getTheta(){
    println("default getTheta() called");
    return -1;
  }
  
}