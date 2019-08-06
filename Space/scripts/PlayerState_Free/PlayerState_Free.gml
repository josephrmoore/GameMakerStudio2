if(!oController.is_paused){
	if(oController.key_left){
		facing = -1;
	}

	if(oController.key_right){
		facing = 1;
	}

	// Blocking

	if(oController.key_block && location == PLAYERLOCATION.GROUNDED) state = PLAYERSTATE.BLOCKING;

	if(oController.key_down && location == PLAYERLOCATION.GROUNDED) state = PLAYERSTATE.DUCKING;

	// Slashing

	if(oController.key_slash){ 
		audio_play_sound(sndSlash, 9, false);
		state = PLAYERSTATE.SLASHING;
	}

	// Dashing

	if(oController.key_dash && can_dash && alarm[1] == -1 && (dashes < max_dashes)){
		++dashes;
		audio_play_sound(sndDash, 8, false);
		state = PLAYERSTATE.DASHING;
		alarm[1] = 10;
	}

	left_right();
	grav();
	jumping();

	if(can_double_dash && mod_double_dash){
		max_dashes = 2;
	}

	if(can_triple_dash && mod_triple_dash){
		max_dashes = 3;
	}

	if(can_triple_jump && mod_triple_jump){
		max_jumps = 3;
	}

	player_tile_collision();
	player_enemy_collision(oEnemy, 1);
	player_object_collision(oDoor);
	player_object_collision(oBreakable);

	// Apply speeds to position

	x += floor(hsp);
	y += floor(vsp);



	if(location == PLAYERLOCATION.AIRBORNE && jumps > 1){
		if(has_screw_attack){
			sprite_index = sPlayer_screw;
			audio_play_sound(sndScrew, 1000, false);
		} else {
			sprite_index = sPlayer_jumping;
		}
	} else if(location == PLAYERLOCATION.GROUNDED && hsp!=0){
		sprite_index = sPlayer_walking;
	} else {
		sprite_index = sPlayer_free;
	}

	if(has_small_avatar && mod_small_avatar){
		var diminish = 0.5;
		image_xscale = diminish*facing;
		image_yscale = diminish;
	} else {
		image_xscale = facing;
	}

}