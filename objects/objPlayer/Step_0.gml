/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("A")))
{
	x += -movementSpeed
	image_xscale = -1
}

if(keyboard_check(ord("D")))
{
	x += movementSpeed
	image_xscale = 1
}

if(keyboard_check(vk_space))
{
	if(instance_place(x, y + 1, objWall))
	{
		vspeed = jumpHeight
	}
}

if(!instance_place(x, y + 1, objWall))
{
	gravity = 0.25
	
}
else
{
	gravity = 0
	
}

if(mouse_check_button_pressed(mb_left))
{
	instance_create_layer(x, y, "Instances", objBasicAttack)
}
