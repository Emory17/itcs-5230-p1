if(keyboard_check(ord("A")) and !instance_place(x-movementSpeed, y, objBlock))
{
	x += -movementSpeed
	image_xscale = -1
}

if(keyboard_check(ord("D")) and !instance_place(x+movementSpeed, y, objBlock))
{
	x += movementSpeed
	image_xscale = 1
}

if(keyboard_check(vk_space) and instance_place(x, y+1, objBlock))
{
	vspeed = jumpHeight
}

if(!instance_place(x, y + 1, objBlock))
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
