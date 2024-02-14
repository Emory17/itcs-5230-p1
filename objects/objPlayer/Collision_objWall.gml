/// @description Insert description here
// You can write your code in this editor

vspeed = 0


//makes it so you slide down the wall after colliding
if(!instance_place(x, y + 1, objWall))
{
	keyboard_clear(ord("A")) 
	keyboard_clear(ord("D")) 
}
