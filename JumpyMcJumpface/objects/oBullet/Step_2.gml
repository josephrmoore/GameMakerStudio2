/// @description Insert description here
// You can write your code in this editor

if(is_paused){
	speed = 0;
} else {
	if(!chasing){
		speed = spd;
	}
	if(axis == 0){
		if(oPlayer.y > y-100 && oPlayer.y < y+100){
			chase();
		}
	}

	if(axis == 1){
		if(oPlayer.x > x-100 && oPlayer.x < x+100){
			chase();
		}
	}
}