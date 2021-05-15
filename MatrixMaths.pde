import peasy.*;

PeasyCam cam;

Maths maths = new Maths();

Diamond before = new Diamond(new Vector(cos(radians(0)), 0, sin(radians(0))), 
                             new Vector(cos(radians(60)), 0, sin(radians(60))),
                             new Vector(cos(radians(120)), 0, sin(radians(120))),
                             new Vector(cos(radians(180)), 0, sin(radians(180))),
                             new Vector(cos(radians(240)), 0, sin(radians(240))),
                             new Vector(cos(radians(300)), 0, sin(radians(300))),
                             new Vector(0, -2, 0),
                             new Vector(0, 1, 0));
Diamond after; 
                             
// EDIT HERE //
/////////////////////////////////////////////////////////////////////////////
Matrix T = new Translate(2, 2, 0);
Matrix R = new Rotate(0, 'y');  
Matrix S = new Scale(0.5, 0.5, 0.5);
Matrix TR = maths.multiply(T, R);
Matrix TRS = maths.multiply(TR, S);
/////////////////////////////////////////////////////////////////////////////

Vector a, b, c, d, e, f, g, h;

void setup() {
  size(500, 500, P3D);
  cam = new PeasyCam(this, 110);
  cam.setWheelHandler(null);  
 
  after = new Diamond(a, b, c, d, e, f, g, h);

}

int time = 0;
int dt = 0;
void draw() {
  rotateX(radians(-15));
  rotateY(radians(-45));
  dt = millis() - time;
  
  //R.setTheta(R.getTheta() + dt * 0.1);
  //R.update();
  //TR = maths.multiply(T, R);
  //TRS = maths.multiply(TR, S);
  a = maths.vectorByMatrix(before.A, TRS);
  b = maths.vectorByMatrix(before.B, TRS);
  c = maths.vectorByMatrix(before.C, TRS);
  d = maths.vectorByMatrix(before.D, TRS);
  e = maths.vectorByMatrix(before.E, TRS);
  f = maths.vectorByMatrix(before.F, TRS);
  g = maths.vectorByMatrix(before.G, TRS);
  h = maths.vectorByMatrix(before.H, TRS);
  after = new Diamond(a, b, c, d, e, f, g, h);

  
  
  background(0);
  noFill();
  strokeWeight(4);
  stroke(255, 0, 0);
  line(-50, 0, 0, 50, 0, 0);
  stroke(0, 255, 0);
  line(0, -50, 0, 0, 50, 0);
  stroke(0, 0, 255);
  line(0, 0, -50, 0, 0, 50);
  
  strokeWeight(1);
  stroke(0, 200, 200);
  fill(0, 255, 255);
   //<>//
  before.display();
  
  after.display();
  
  time = millis();
}
