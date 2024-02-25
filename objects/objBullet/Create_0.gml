/// @description Insert description here
// You can write your code in this editor

speedX = 0
speedY = 0

if(instance_exists(objPlayer))
{
	if(objPlayer.x < objBlasterEnemy.x)
	{
		speedX -= bulletSpeed
	}
	if(objPlayer.x > objBlasterEnemy.x)
	{
		speedX += bulletSpeed
	}
	//clamp(objPlayer.x, objPlayer.x - 100, objPlayer.x + 100)
	//clamp(objBlasterEnemy.x, objBlasterEnemy.x - 100, objBlasterEnemy.x + 100)
	if(objPlayer.y < objBlasterEnemy.y and objPlayer.x == objBlasterEnemy.x)
	{
		
		show_debug_message("Inside")
		speedY -= bulletSpeed
		
		
	}
}
