// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ConsumerState_Idle(){
	avatar_motion();
	avatar_tile_collision();
	avatar_object_collision(oTree);
	update_position();
	if(alarm[0] <= 0){
		alarm[0] = 60;
	}
}