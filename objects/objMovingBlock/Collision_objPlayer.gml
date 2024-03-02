storedy = other.y

other.x = other.xprevious
other.y = other.yprevious

if(instance_place(x,y,objPlayer)){
	other.x += hspeed
	other.y = storedy
}
else{
	other.vspeed = 0
}
