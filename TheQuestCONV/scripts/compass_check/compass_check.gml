function compass_check() {
	if(key_right){
		oPlayer.compass = 0;
	} else if(key_up){
		oPlayer.compass = 1;
	} else if (key_left){
		oPlayer.compass = 2;
	} else if (key_down){
		oPlayer.compass = 3;
	}


}
