/// @description Insert description here
// You can write your code in this editor

speedX = 0
speedY = 0

image_xscale = .5
image_yscale = .5

if(instance_exists(objPlayer))
{
	if(objPlayer.x < objBruteEnemy.x)
	{
		speedX -= bulletSpeed
		
	}
	if(objPlayer.x > objBruteEnemy.x)
	{
		speedX += bulletSpeed
		image_xscale *= -1;
	}
	
}

