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
	grounded = grounded_check;
	player_button_collision(oButton);
	player_special_button_collision(oButtonSpecial);
	player_winzone_collision();
	player_hazard_collision();
}