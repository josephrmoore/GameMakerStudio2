/// @description Insert description here
// You can write your code in this editor
if(rising){
	if((y-rising_rate) > end_y){
		y -= rising_rate;
	} else if ((y-rising_rate) <= end_y){
		y = end_y;
		rising = false;
	}
}