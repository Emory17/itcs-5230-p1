if(mouse_check_button(mb_right)){
	if (facing = 1) {
		x = objPlayer.x + 20
		y = objPlayer.y 
	}
	if facing = -1 {
		x = objPlayer.x - 20
		y = objPlayer.y 
	}
}
else{
	instance_destroy()
	objPlayer.canAttack = true
	objPlayer.blocking = false
}


