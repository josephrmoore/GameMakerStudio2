// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collisions(){
	player_object_collision(oLedge);
	player_button_collision(oButton);
	player_object_collision(oDoor);
	player_object_collision(oRiser);
	player_winzone_collision();
}