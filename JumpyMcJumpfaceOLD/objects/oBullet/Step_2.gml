/// @description Insert description here
// You can write your code in this editor


if(is_paused){
	speed = 0;
} else {
	speed = spd;
}

if(wave_motion){
	if(axis){
		y = wave(y-10,y+10,0.25,0,false);
	} else {
		x = wave(x-10,x+10,0.25,0,false);
	}
}

if(x>room_width+100 || y>room_height+100){
	instance_destroy();
}

//if(is_paused){
//	speed = 0;
//} else {
//	if(!chasing){
//		speed = spd;
//	}
//	if(axis == 0){
//		if(oPlayer.y > y-100 && oPlayer.y < y+100){
//			chase();
//		}
//	}

//	if(axis == 1){
//		if(oPlayer.x > x-100 && oPlayer.x < x+100){
//			chase();
//		}
//	}
//}