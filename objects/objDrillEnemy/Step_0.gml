/// @description Insert description here
// You can write your code in this editor



// This code was written by the professor as a means to help fix a pathing issue
if (place_meeting(x + path_speed, y - sprite_height/2, objBlock))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		
		path_speed *= -1
		
}

if (place_meeting(x + path_speed, y - sprite_height/2, obj_marker))
{
		//	The character is about to collide with a block,
		//	reverse the path.		
		
		path_speed *= -1
		
}