/// @description Insert description here
// You can write your code in this editor
if(rising && (current_rise+rising_rate) <= rising_limit){
	y = y-rising_rate;
	current_rise += rising_rate;
} else if (rising && (current_rise+rising_rate) > rising_limit){
	rising = false;
}