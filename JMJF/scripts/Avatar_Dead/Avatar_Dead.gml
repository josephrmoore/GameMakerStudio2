// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Dead(){
	if(!is_paused){
		grav();
		collisions();
		avatar_position();
		sprite_index = sAvatar_dead;
		hsp = 0;
	}
}