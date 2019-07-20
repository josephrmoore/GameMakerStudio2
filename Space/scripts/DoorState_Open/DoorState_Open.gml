if(image_speed == 1){
	if(image_index == 7){
		image_speed = 0;
	}	
} else {
	passable = true;
}

if(alarm[0] == -1 || place_meeting(x,y,oPlayer)){
	alarm[0] = 60;
}