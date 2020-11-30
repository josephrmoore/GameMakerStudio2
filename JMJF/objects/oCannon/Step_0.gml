/// @description Insert description here
// You can write your code in this editor

//if(!is_paused && activated && oGame.current_room != "level9"){
if(activated && !is_paused){
	var firing_frames = (firing_rate * 60);
	cannon_move();
	if(alarm[0] == -1){
		alarm[0] =  firing_frames + round(random_range(0, (3*firing_frames)));
	}
}
//}

//if(oGame.current_room == "level9"){
	//instance_destroy();
//}