if(y - sprite_yoffset >= other.yprevious + other.sprite_yoffset){
	other.y = y - (sprite_yoffset + other.sprite_yoffset)
	vspeed = 0
}