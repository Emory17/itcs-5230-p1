/// @description Insert description here
// You can write your code in this editor

speedX = 0
speedY = 0

if(instance_exists(objPlayer))
{
	if(objPlayer.x < objBruteEnemy.x)
	{
		speedX -= bulletSpeed
	}
	if(objPlayer.x > objBruteEnemy.x)
	{
		speedX += bulletSpeed
	}
	
}

