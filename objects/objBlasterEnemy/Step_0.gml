/// @description Insert description here
// You can write your code in this editor


if(instance_exists(objPlayer))
{
	if(objPlayer.x < objBlasterEnemy.x)
	{
		image_xscale = -1
	}
	if(objPlayer.x > objBlasterEnemy.x)
	{
		image_xscale = 1
	}

	if(objPlayer.y < objBlasterEnemy.y and objPlayer.x == objBlasterEnemy.x)
	{
		image_xscale = -1
	}
}

