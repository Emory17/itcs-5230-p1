posoffset = 0

while(posoffset < (room_height - y)){
	if(instance_place(x,y+posoffset+1,objBlock)){
		lscale = (posoffset+16)/32
		break
	}
	posoffset += 16
}

laser = noone
alarm[0] = downtime
