 
Bacteria[] bacteriaArray;//declare bacteria variables here   
 void setup()   
 {
 	size(800, 600);
 	//background(0);     
 	bacteriaArray = new Bacteria[100];
 	for(int i = 0; i < bacteriaArray.length; i++)
 	{
 		bacteriaArray[i] = new Bacteria();
 	}//initialize bacteria variables here   
 }
    
 
 
 void draw()   
 {   
 	background(0); 
 	for(int i = 0; i < bacteriaArray.length; i++)
 	{
 		bacteriaArray[i].move();
 		bacteriaArray[i].show();
 		bacteriaArray[i].opacity();
 	}

 	monster();


//move and show the bacteria   
 }  
 class Bacteria    
 {  
 	int myX, myY, myColor, myOpacity;
 	float mySize; 
 	double xDirection, yDirection, xBiased, yBiased;
 	Bacteria()
 	{
	 	myX = 200;
	 	myY = 200;
	 	myColor = color(250,(int)(Math.random()*250),(int)(Math.random()*250));
	 	mySize = 3.0;

	 	//move variables
	 	xBiased = 0.5;
	 	yBiased = 0.5;

 	}

 	void move()
 	{

 		xDirection = (Math.random());
 		yDirection = (Math.random());

 		
 		//horizontal
 		if(xDirection >= xBiased)
 		{
 			myX = myX + 5; //to the right
 		}
 		else if(xDirection <= xBiased)
 		{
 			myX = myX - 5; //to the left
 		}
 		
 		//vertical
 		if(yDirection >= yBiased)
 		{
 			myY = myY + 5; //down
 		}
 		else if(yDirection <= yBiased)
 		{
 			myY = myY - 5;		//up	
 		}

 		//mouseReact hor
 		if(mouseX >= myX)
 		{
 			xBiased = 0.70; //biased left

 		}
 		else if(mouseX <= myX) //biased right
 		{
 			xBiased = 0.30;
 		}

 		//mouseReact vert
 		if(mouseY >= myY) //biased up
 		{
 			yBiased = 0.70;
 		}
 		else if(mouseY <= myY) //biased down
 		{
 			yBiased = 0.30;
 		}

 		//bounce off wall hor
 		if(myX > 800)
 		{
 			xBiased = 1.0;
 		}
 		else if(myX < 0)
 		{
 			xBiased = 0.0;
 		}
 		//bounce off wall ver
 		if(myY > 600)
 		{
 			yBiased = 1.0;
 		}
 		else if(myY < 0)
 		{
 			yBiased = 0.0;
 		}




 	}
 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, mySize, mySize);
 		if(mySize >= 10)
 			mySize = 10;

 		mySize += 0.05;
 	}

 	void opacity()
 	{
 		
 		
 		
 	}


 } 
 void monster()
 {
 	fill(255, 255, 255, 100);
 	noStroke();
 	ellipse(mouseX,mouseY,30,30);
 }  
