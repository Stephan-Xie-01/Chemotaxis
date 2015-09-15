Bacteria[] bacteriaArray;//declare bacteria variables here   
 void setup()   
 {
 	size(600, 600);     
 	bacteriaArray = new Bacteria[3];//initialize bacteria variables here   
 }
    
 
 
 void draw()   
 {   
 	background(0); 
 	for(int i = 0; i < bacteriaArray.length; i++)
 	{
 		bacteriaArray[i] = new Bacteria();
 		bacteriaArray[i].move();
 		bacteriaArray[i].show();
 	}


//move and show the bacteria   
 }  
 class Bacteria    
 {  
 	int myX, myY, myColor;   
 	Bacteria()
 	{
	 	myX = 200;
	 	myY = 200;
	 	myColor = color(250,(int)(Math.random()*250),(int)(Math.random()*250));
 	}

 	void move()
 	{
 		int direction = (int)(Math.random() *4);
 		if(direction == 0)
 		{
 			myX = myX + 5;

 		}
 		else if(direction == 1)
 		{
 			myX = myX - 5;
 		}
 		else if(direction == 2)
 		{
 			myY = myY + 5;

 		}
 		else
 		{
 			myY = myY - 5;
 			
 		}

 	}
 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, 20, 20);
 	}//lots of java!   
 }     
