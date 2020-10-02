// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Falling(){
	grav();
	collisions();
	avatar_position();
	if(grounded){
		avatar_state = AVATARSTATE.DEAD;
	}
	sprite_index = sAvatar_falling;
	if(alarm[0] == -1){
		alarm[0] = 10;
	}
}