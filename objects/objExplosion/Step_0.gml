/// @description Insert description here
// You can write your code in this editor

if(instance_exists(objPlayer) and exploTimer == true)
{
	exploTimer = false
	alarm[0] = 30
	alarm[1] = 10
}

if(growing)
{
	image_xscale = image_xscale + .1
	image_yscale = image_xscale + .1
}