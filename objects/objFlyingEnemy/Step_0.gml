/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(objPlayer) and bombReady == true)
{
	
	if(distance_to_object(objPlayer) < attackDistance)
	{
		bombReady = false
		alarm[0] = 100
		instance_create_layer(x, y + 32, "Instances", objBomb)
	}
}