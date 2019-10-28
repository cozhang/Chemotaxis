 //declare bacteria variables here   
 Bacteria [] ab;
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);
 	ab =new Bacteria[10];
 	for(int i=0;i<ab.length;i++)
 	{
 		ab[i]= new Bacteria();
 	}
    
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for(int i=0; i<ab.length; i++)
 	{
 	ab[i].show();
 	ab[i].move();
 	}  

 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{	
 		myColor=color(0,0,225);
 		myX=(int)(Math.random()*300)+100;
 		myY=(int)(Math.random()*300)+100;
 	}  
 	void move()
 	{
    	myX=myX+((int)(Math.random()*3)-1);
    	myY=myY+((int)(Math.random()*3)-1);
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,50,50);
 	}
 }    