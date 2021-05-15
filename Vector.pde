class Vector{
 
  float x, y, z, h;
  
  Vector(){
    x = 0;
    y = 0;
    z = 0;
    h = 1;
  }
  
  Vector(float x_, float y_, float z_){
    x = x_;
    y = y_;
    z = z_;
    h = 1;
  }
  
  float minimum(float one, float two){
    return (one <= two) ? one : two;
  }
  
  float maximum(float one, float two){
    return (two >= one) ? two : one;
  }

  
}