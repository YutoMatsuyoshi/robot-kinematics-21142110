float footH = 60;

float arm1W = 40;
float arm1D = 20;
float arm1L = 50;

float arm2W = 20;
float arm2D = 20;
float arm2L = 50;

float head3W = 30;
float head3D = 30;
float head3L = 30;


float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;

float l3 = 0;

float dif = 1.0;


void setup(){
  size(2400, 1000, P3D);
  //background(255);
  
  camera(150, 150, 150, 0, 0, 70, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(0);
  
  if(keyPressed){
    if(key == 'm'){
      angle0 = angle0 + dif;
    }
    if(key == 'M'){
      angle0 = angle0 - dif;
    }
    if(key == 'a'){
      angle1 = angle1 + dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 't'){
      angle2 = angle2 + dif;
    }
    if(key == 'T'){
      angle2 = angle2 - dif;
    }
    if(key == 's'){
      angle3 = angle3 + dif;
    }
    if(key == 'S'){
      angle3 = angle3 - dif;
    }
     if(key == 'u'){
      angle4 = angle4 + dif;
    }
    if(key == 'U'){
      angle4 = angle4 - dif;
    }
     if(key == 'y'){
      angle5 = angle5 + dif;
    }
    if(key == 'Y'){
      angle5 = angle5 - dif;
    }
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      angle4 = 0;
      angle5 = 0;
    }
  }
  
   //head
  translate(0, 0, footH+arm1L+head3L);
  fill(139,69,19);
  box(head3W,head3D,head3L);
  rotateZ(radians(angle0));
  rotateX(radians(angle1));
  
   //body
  translate(0,0,-head3L/2-arm1L/2);
  fill(0,128,128);
  box(arm1W,arm1D,arm1L);
 
   //arm1
  pushMatrix();
  translate(-30,0,25);
  rotateX(radians(angle2));
  translate(0,0,-25);
  fill(139,69,19);
  box(arm2W,arm2D,arm2L);
  
  
  
   //arm2
  popMatrix();
  pushMatrix();
  translate(30,0,25);
  rotateX(radians(angle3));
  translate(0,0,-25);
  fill(139,69,19);
  box(arm2W,arm2D,arm2L);
  
 
  //foot1
  popMatrix();
  pushMatrix();
  rotateX(radians(angle4));
  translate(-10,0,-55);
  fill(0,0,255);
  box(20,20,footH);
  
  
    //foot2
  popMatrix();
  rotateX(radians(angle5));
  translate(10,0,-55);
  fill(0,0,255);
  box(20,20,footH);
  
  
  
  
  
  
  //xyzAxis @ Pr
  //translate(0, 0, arm3L/2);
  //xyzAxis(10);

}
