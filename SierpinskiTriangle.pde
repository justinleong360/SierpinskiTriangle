int num = 30;
public void setup()
{
	size(600, 600);
	background(0);
}
public void draw()
{
	sierpinski(10, 585, num);
}

public void mouseClicked()
{
background(0);
num = num + 20;
}

public void sierpinski(int x, int y, int len) 
{
	if(len>20)
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else 
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		noStroke();
		triangle(x, y, x + len/2, y + len, x - len/2, y + len);
	}			
}