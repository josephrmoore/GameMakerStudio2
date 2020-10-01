function PlayerState_Sliding() {
	//left_right();
	hsp = 0;
	//jumping();
	if(place_meeting(x,y,oPole)){
		if(oPlayer.has_pole_climb){
			climb();
		} else {
			slide();
		}
	} else {
		grav();
	}
	collisions();

	pos();

	launch_x = x;
	launch_y = y;

	if(!audio_is_playing(aSliding)){
		audio_play_sound(aSliding,100,false);
	}

	player_state_check();
	check_for_ending();

	sprite_index = player_sliding;


}
