/// @description Insert description here
// You can write your code in this editor
if(is_paused){
	speed = 0;
	image_speed = 0;
} else {
	image_speed = 1;
	speed = spd;
	if(growing){
		if(alarm[0] == -1){
			alarm[0] = 10;
		}
	}

	if(wave_motion){
		if(axis){
			y = wave(y-10,y+10,0.25,0,false);
		} else {
			x = wave(x-10,x+10,0.25,0,false);
		}
	}
}

if(room_get_name(room) != "level9"){ 
	if(x>room_width+100 || y>room_height+100){
		instance_destroy();
	}
}