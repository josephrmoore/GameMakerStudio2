function jumping() {
	// Jumping
	var jumpy = jSpeed

	//if(has_high_jump){
	//	jumpy = jSpeedHigh;
	//}
//	show_debug_message("jumpyscript");//
//	show_debug_message(oAvatar.avatar_state);
	if(oGame.pressed_buttons){
		vsp = -jumpy;
	}
//	show_debug_message(oAvatar.avatar_state);
		if (!oGame.pressed_buttons_held) {
			vsp = max(vsp, -jumpy/4);
			//avatar_state = AVATARSTATE.JUMPING;
		}
//	show_debug_message(oAvatar.avatar_state);
}
