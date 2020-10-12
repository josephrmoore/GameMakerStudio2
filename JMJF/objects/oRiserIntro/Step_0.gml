/// @description Insert description here
// You can write your code in this editor
if(rising && !is_paused){
	if((y-rising_rate) > end_y){
		y -= rising_rate;
		if(with_avatar){
			oAvatar.y -= rising_rate;
		}
	} else if ((y-rising_rate) <= end_y){
		y = end_y;
		rising = false;
		if(with_avatar){
			oAvatar.y = end_y-16;
		}
	}
}