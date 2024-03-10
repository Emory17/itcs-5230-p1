/// @description Insert description here
// You can write your code in this editor




if room = MainRoom {
audio_stop_sound(obj_jukebox.current_song);
	
current_song = ship_level;
}

if room = BossRoom {

audio_stop_sound(current_song);
current_song = boss_level;

}

if room = TitleScreen {
audio_stop_sound(current_song);
current_song = menu;
}


audio_play_sound(current_song, 1, true);