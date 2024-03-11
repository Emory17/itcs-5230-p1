if(instance_exists(attatchedEnemy)){
	x = attatchedEnemy.x
	y = attatchedEnemy.y

	image_angle = clamp(point_direction(x,y,objPlayer.x, objPlayer.y), 0, 180)
}
else {
	instance_destroy()
}




