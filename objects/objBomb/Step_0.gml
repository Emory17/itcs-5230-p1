/// @description Insert description here
// You can write your code in this editor

if(!instance_place(x, y + 1, objBlock))
{
	gravity = .25
}
else
{
	gravity = 0
	instance_destroy()
	instance_create_layer(x, y, "Instances", objExplosion)
	if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
		{
			audio_play_sound(bombExplosion, 1, false)
		}
}


