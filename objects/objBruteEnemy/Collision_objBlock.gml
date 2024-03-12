/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();
vspeed = 0
if(gravity > 0)
{
	instance_create_layer(x - 32, y + 50, "Instances", objShockwave)
	gravity = 0
	if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
	{
		audio_play_sound(bombExplosion, 1, false)
	}
}