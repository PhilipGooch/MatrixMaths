class Rotate extends Matrix{

// X
//  |   1      0        0      0  |
//  |   0    cos(Θ)   sin(Θ)   0  |
//  |   0   -sin(Θ)   cos(Θ)   0  |
//  |   0      0        0      1  |  
  
// Y
//  |  cos(Θ)   0   -sin(Θ)   0  |
//  |    0      1      0      0  |
//  |  sin(Θ)   0    cos(Θ)   0  |
//  |    0      0      0      1  |  
  
// Z
//  |   cos(Θ)   sin(Θ)   0   0  |
//  |  -sin(Θ)   cos(Θ)   0   0  |
//  |     0        0      1   0  |
//  |     0        0      0   1  |
  
  float theta;
  char axis;
  
  Rotate(float theta_, char axis_){
    theta = theta_;
    axis = axis_;
    update();
    
  }
  
  void update(){
    clearMatrix();
    switch(axis){
      case 'x':
        matrix[0][0] = 1;
        matrix[1][1] = cos(radians(theta));
        matrix[1][2] = sin(radians(theta));
        matrix[2][1] = -sin(radians(theta));
        matrix[2][2] = cos(radians(theta));
        matrix[3][3] = 1;
        break;
      case 'y':
        matrix[0][0] = cos(radians(theta));
        matrix[0][2] = -sin(radians(theta));
        matrix[2][0] = sin(radians(theta));
        matrix[2][2] = cos(radians(theta));
        matrix[1][1] = 1;
        matrix[3][3] = 1;
        break;
      case 'z':
        matrix[0][0] = cos(radians(theta));
        matrix[0][1] = sin(radians(theta));
        matrix[1][0] = -sin(radians(theta));
        matrix[1][1] = cos(radians(theta));
        matrix[2][2] = 1;
        matrix[3][3] = 1;
        break;
    }
  }
  
  void setTheta(float theta_){
    theta = theta_;
  }

  
  float getTheta(){
    return theta;
  }
}