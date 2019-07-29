/// @description Insert description here
// You can write your code in this editor
if(moving && (current_spd+spd) <= spd_limit){
	x = x+spd;
	current_spd += spd;
} else if (moving && (current_spd+spd) > spd_limit){
	moving = false;
}