function jumping() {
	// Jumping
	var jumpy = jSpeed

	//if(has_high_jump){
	//	jumpy = jSpeedHigh;
	//}
	if(oGame.pressed_buttons){
		if(jumps < max_jumps){
			avatar_state = AVATARSTATE.JUMPING;
			grounded = false;
			vsp = -jumpy;
			jumps++;
//			launch_y = y;
			audio_play_sound(aJump, 1000, false);
		}
	}
		if (!oGame.pressed_buttons_held) {
			vsp = max(vsp, -jumpy/4);
			avatar_state = AVATARSTATE.JUMPING;
		}
}
