if(other.totalHealth < 90){
	audio_play_sound(playerPickUp, 1, false)
	other.totalHealth += 15
	instance_destroy()
}
