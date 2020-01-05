// Jumping
if(has_high_jump){
	jSpeed = jSpeedHigh;
}
if(controllable && oPlayer.player_state != PLAYERSTATE.CLIMBING){
	if(oGame.buttons){
		if(jumps < max_jumps){
			player_state = PLAYERSTATE.JUMPING;
			vsp = -jSpeed;
			jumps++;
			launch_x = x;
			launch_y = y;
			audio_play_sound(aJump, 1000, false);
		}
	}

	if (!oGame.pressed_buttons_held) vsp = max(vsp, -jSpeed/4);
}