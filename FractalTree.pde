private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
 public void setup() 
 {   
 	size(640,480);    
	noLoop(); 
 } 
 public void draw() 
 {   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   

	drawBranches(320,380,100,3*Math.PI/2);  //will add later 

// for(int i=0; i<5; i++)
// {
// 	for(int j=0; j<3; j++)
// 	{
// 		ellipse(10*i,10*j,10,10);
// 	}
// }
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double aa=angle+branchAngle;
	double ab=angle-branchAngle;
	branchLength=branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(aa) + x);
	int endY1 = (int)(branchLength*Math.sin(aa) + y);
	int endX2 = (int)(branchLength*Math.cos(ab) + x);
	int endY2 = (int)(branchLength*Math.sin(ab) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	if(branchLength>4)
	{
		// drawBranches(endX1,endY1,branchLength,aa);
		// drawBranches(endX2,endY2,branchLength,ab);
		drawBranches(endX1,endY1,branchLength,aa);
		drawBranches(endX2,endY2,branchLength,ab);
	}//2 lines of code need curly braces
} 
