// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Avatar_Vine(){
	if(!is_paused){
		image_speed = 1;
	//	left_right();
		hsp = 0;
		//if(oGame.move_left || oGame.move_right){
		//	jumping();
		//}
		climb_vine();

		if(vsp < 0 && !grounded){
//		one_way_collision(oLedge, "y", 1);
		} else {
			player_object_collision(oLedge);
		}
		avatar_position();
		sprite_index = sAvatar_vine;
		if(alarm[0] == -1){
			alarm[0] = 10;
		}
	}
}