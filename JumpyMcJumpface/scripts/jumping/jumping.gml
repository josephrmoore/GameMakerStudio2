// Jumping

if(oGame.buttons){
	if(jumps < max_jumps){
		vsp = -jSpeed;
		jumps++;
		launch_x = x;
		launch_y = y;
		audio_play_sound(aJump, 1000, false);
	}
}

if (!oGame.pressed_buttons_held) vsp = max(vsp, -jSpeed/4);