/// @description Insert description here
// You can write your code in this editor

//invinsible cheat code
if(keyboard_check_pressed(ord("L")))
{
	if(objPlayer.invincible = true)
	{
		objPlayer.invincible = false
	}
	else
	{
		objPlayer.invincible = true
	}
}

//room restart
if(keyboard_check_pressed(ord("O")))
{
	room_restart()
}

//game restart
if(keyboard_check_pressed(ord("G")))
{
	game_restart()
}

//Go to just outside the boss room
if(keyboard_check_pressed(ord("B")))
{
	
	objPlayer.x = 14761
	objPlayer.y = 190
	
	
}

