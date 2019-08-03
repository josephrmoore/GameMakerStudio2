//image_speed = 0;
//image_index = 1;

if(oController.key_down){
	grav();
	y += floor(vsp);
	mask_index = sPlayer_ducking;
} else {
	state = PLAYERSTATE.FREE;
	mask_index = sPlayer_free;
}

sprite_index = sPlayer_ducking;
