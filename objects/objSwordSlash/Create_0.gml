alarm[0] = attack_cooldown
image_xscale = objPlayer.image_xscale
image_yscale = 1.5
facing = objPlayer.image_xscale
attackScale = 0;
depth = -3
alarm[1] = attack_cooldown -1;
objBlaster.visible = false;

if facing = 1 {
	image_angle = 20;
}
if facing = -1 {
	image_angle = -20;
}
