if(onFire)
{
	timeOnFire += 60;
	totalHealth -= 10;
	audio_play_sound(enemyHit, 1, false)
	if(totalHealth <= 0){
		audio_play_sound(enemyDies,1,false);
		instance_destroy()
	}
	alarm[10] = 60;
	
	if(timeOnFire >= 180) {
		onFire = false;
		timeOnFire = 0;
	}
}

