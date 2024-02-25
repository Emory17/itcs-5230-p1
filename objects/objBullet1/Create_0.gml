/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer))
{
	speed = 10
	direction = clamp(point_direction(x, y, objPlayer.x, objPlayer.y), 0, 359)//needs to be fixed to 0-180 degrees
}
