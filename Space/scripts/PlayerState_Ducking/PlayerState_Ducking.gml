//image_speed = 0;
//image_index = 1;

if(key_down){
	input();
	grav();
} else {
	state = PLAYERSTATE.FREE;
}

sprite_index = sPlayer_ducking;