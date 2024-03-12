/// @description Insert description here
// You can write your code in this editor

audio_stop_sound(obj_jukebox.current_song);
room_goto(WinRoom);


if(instance_exists(objPlayer) and distance_to_object(objPlayer) < 700)
{
	audio_play_sound(doorEnter, 1, false)
}

