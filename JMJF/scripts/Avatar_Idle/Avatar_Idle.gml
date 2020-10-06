// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Idle(){
	if(controllable){
		grav();
		left_right();
		jumping();
		collisions();
		avatar_position();
	}
	image_speed = 1;
	sprite_index = sAvatar_idle;
}