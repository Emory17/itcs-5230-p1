/// @description Insert description here
// You can write your code in this editor


if(instance_exists(objPlayer))
{
	if(objPlayer.x < x)
	{
		image_xscale = -1
	}
	if(objPlayer.x > x)
	{
		image_xscale = 1
	}
}


