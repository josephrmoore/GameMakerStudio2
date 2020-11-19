// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Idle(){
	if(controllable && !is_paused){
		grav();
		left_right();
		jumping();
		collisions();
		avatar_position();
	}
	alarm[1] = -1;
	image_speed = 1;
	sprite_index = sAvatar_idle;
}