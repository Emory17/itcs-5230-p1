function damagePlayer(damage){
	if(!invincible){
		invincible = true
		alarm[0] = iframes
		sprite_index = sprPlayerDamaged
		
		totalHealth -= damage
		if(totalHealth < 0){
			instance_destroy()
		}
	}
}