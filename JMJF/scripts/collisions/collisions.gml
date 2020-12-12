// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisions(){
//	player_object_collision(oCollides);
	var grounded_check = false;
	player_object_collision(oDoor);
	player_object_collision(oLedge);
	if(grounded){
		grounded_check = true;
	}
	if(avatar_state != AVATARSTATE.LADDER){
		player_object_collision(oLedgeLadder);
		if(grounded){
			grounded_check = true;
		}
	}
	if(room_get_name(room) == "level9"){
		//show_debug_message("9 col");
		player_big_button_collision(oButtonBig);
		if(grounded){
			grounded_check = true;
		}
	} else {
		player_button_collision(oButton);
		if(grounded){
			grounded_check = true;
		}
		if(instance_exists(oButtonSpecial)){
			player_special_button_collision(oButtonSpecial);
			if(grounded){
				grounded_check = true;
			}
		}
	}
	grounded = grounded_check;


	player_winzone_collision();
	player_hazard_collision();
}