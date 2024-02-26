/// @description Insert description here
// You can write your code in this editor

if(instance_place(x + 32, y, objPlayer) and !instance_place(x - 1, y, objPlayer))
{
	image_xscale = objPlayer.image_xscale
	instance_create_layer(x, y, "Instances", objSwordAttack)
}
if(instance_place(x - 32, y, objPlayer) and !instance_place(x + 1, y, objPlayer))
{
	image_xscale = objPlayer.image_xscale * -1
	instance_create_layer(x, y, "Instances", objSwordAttack)
}

if(instance_exists(objPlayer) and shockwaveAvailable = true)
{
	if(distance_to_object(objPlayer) < attackDistance)
	{
		shockwaveAvailable = false
		alarm[0] = 300
		
		path_speed = 0
		instance_create_layer(x, y, "Instances", objShockwave)
		
		/* Jump Logic work in progress
		if(path_speed == 0)
		{
			if(!instance_place(x, y + 1, objBlock))
			{
				gravity = 0.25
			}
			else
			{
				vspeed = jumpHeight
				gravity = 0	
				
			}
		}*/

	}
	else
	{
		path_speed = 1
	}
}