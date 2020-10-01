function jumping() {
	// Jumping
	var jumpy = jSpeed

	if(has_high_jump){
		jumpy = jSpeedHigh;
	}

	if(controllable && oPlayer.player_state != PLAYERSTATE.CLIMBING){
		if(oGame.pressed_buttons){
			if(jumps < max_jumps){
				player_state = PLAYERSTATE.JUMPING;
				vsp = -jumpy;
				jumps++;
				launch_x = x;
				launch_y = y;
				audio_play_sound(aJump, 1000, false);
			}
		}

		if (!oGame.pressed_buttons_held) vsp = max(vsp, -jumpy/4);
	}


}
