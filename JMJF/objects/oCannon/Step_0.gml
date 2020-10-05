/// @description Insert description here
// You can write your code in this editor

//if(!is_paused && activated && oGame.current_room != "level9"){
if(activated && !is_paused){
	cannon_move();
	if(alarm[0] == -1){
		alarm[0] = (firing_rate * 60) + round(random_range(-200, 200));
	}
}
//}

//if(oGame.current_room == "level9"){
	//instance_destroy();
//}