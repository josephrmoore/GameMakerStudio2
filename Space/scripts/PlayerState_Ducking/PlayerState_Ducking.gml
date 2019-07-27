//image_speed = 0;
//image_index = 1;

if(oController.key_down){
	grav();
} else {
	state = PLAYERSTATE.FREE;
}

sprite_index = sPlayer_ducking;