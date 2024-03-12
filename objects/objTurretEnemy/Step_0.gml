/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and canShoot == true)
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		canShoot = false
		alarm[0] = 80
		instance_create_layer(x, y, "Instances", objBullet1)
		if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
		{
			audio_play_sound(playerBlasterShot, 1, false)
		}
	}
}
