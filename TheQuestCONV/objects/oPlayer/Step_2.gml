/// @description Insert description here
// You can write your code in this editor

if(!oBrain.no_control){
	input();
	compass_check();
	speed_calculation();
	wall_collision();
}

if(hearts<=0){
	game_end();
}
