if(right){
	hspeed = mspeed
	if(instance_place(x,y-1,objPlayer)){
		objPlayer.x += mspeed
	}
	if(x - initx >= range){
		right = false
	}
}
else{
	hspeed = -mspeed
	
	if(instance_place(x,y-1,objPlayer)){
		objPlayer.x -= mspeed
	}
	
	if(x - initx <= 0){
		right = true
	}
}
