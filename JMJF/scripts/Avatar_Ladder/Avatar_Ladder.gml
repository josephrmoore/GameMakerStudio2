// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Ladder(){
	alarm[1] = -1;
	if(!is_paused){
		image_speed = 1;
		//left_right();
		hsp = 0;
		//if(oGame.move_left || oGame.move_right){
		//	jumping();
		//}
		climb_ladder();
		collisions();
		avatar_position();
		sprite_index = sAvatar_ladder;
		if(alarm[0] == -1){
			alarm[0] = 10;
		}
	}
}