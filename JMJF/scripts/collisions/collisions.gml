// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisions(){
	player_object_collision(oCollides);
	if(avatar_state != AVATARSTATE.LADDER){
		player_object_collision(oLedgeLadder);
	}
	player_button_collision(oButton);
	player_winzone_collision();
	player_hazard_collision();
}