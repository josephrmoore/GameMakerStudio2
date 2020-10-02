/// @description Insert description here
// You can write your code in this editor
//if(is_paused){
//	speed = 0;
//} else {
	speed = spd;
//}

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