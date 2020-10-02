// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Walking(){
	image_speed = 1;
	grav();
	left_right();
	jumping();
	collisions();
	avatar_position();
	sprite_index = sAvatar_walking;
	if(hsp<0){
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	if(alarm[0] == -1){
		alarm[0] = 10;
	}
}