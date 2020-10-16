function jumping() {
	// Jumping
	var jumpy = jSpeed

	//if(has_high_jump){
	//	jumpy = jSpeedHigh;
	//}
//	show_debug_message("jumpyscript");//
//	show_debug_message(oAvatar.avatar_state);
	if(oGame.pressed_buttons){
//		show_debug_message(oAvatar.avatar_state);
		if(jumps < max_jumps){
//			show_debug_message(oAvatar.avatar_state);
			avatar_state = AVATARSTATE.JUMPING;
//			show_debug_message(oAvatar.avatar_state);
			grounded = false;
			vsp = -jumpy;
			jumps++;
//			launch_y = y;
			audio_play_sound(aJump, 1000, false);
		}
	}
//	show_debug_message(oAvatar.avatar_state);
		if (!oGame.pressed_buttons_held) {
			vsp = max(vsp, -jumpy/4);
			//avatar_state = AVATARSTATE.JUMPING;
		}
//	show_debug_message(oAvatar.avatar_state);
}
