function damagePlayer(damage){
	if(!invincible){
		invincible = true
		alarm[0] = iframes
		sprite_index = sprPlayerDamaged
		audio_play_sound(playerHit,1,false);
		totalHealth -= damage
		if(totalHealth <= 0){
			instance_destroy()
		}
	}
}