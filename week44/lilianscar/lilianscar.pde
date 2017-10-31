void setup()
{
 size(600,600);
}
int x=20; //wheel size
int l=100; //lenght of car
int h=50; //height of car
int a=0;

void draw()
{
 background(225); 
 if(pmouseX<mouseX||a==2&&pmouseX==mouseX){
   a=2;
 pushMatrix();
 translate(mouseX,300);
 body();
 popMatrix();
 pushMatrix();
 translate(mouseX+(x/2),300+(h+(x/2)));
 rotate(radians(mouseX*1.3));
 wheel1();
 popMatrix();
 pushMatrix();
 translate(mouseX+90,300+(h+(x/2)));
 rotate(radians(mouseX*1.3));
 wheel2();
 popMatrix();}
 
 if (pmouseX>mouseX||a==1&&pmouseX==mouseX){
   a=1;
 pushMatrix();
 translate(mouseX+l,300+h);
 scale(-1);
 body();
 popMatrix();
 pushMatrix();
 translate(mouseX+(x/2),300+(h+(x/2)));
 rotate(radians(mouseX*1.3));
 wheel1();
 popMatrix();
 pushMatrix();
 translate(mouseX+90,300+(h+(x/2)));
 rotate(radians(mouseX*1.3));
 wheel2();
 popMatrix();
 }
}


void body()
{
 fill(100);
 ellipse(l,(h/2),h,h);
 fill(0);
 rect(0,0,l,h);
}
void wheel1()
{
 fill(225); 
 ellipse(0,0,x,x);
 line(0-(x/2),0,0+(x/2),0);
}
void wheel2()
{
 fill(225); 
 ellipse(0,0,x,x);
 line(0-(x/2),0,0+(x/2),0);
}
