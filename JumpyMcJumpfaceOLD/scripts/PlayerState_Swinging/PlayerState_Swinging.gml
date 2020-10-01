function PlayerState_Swinging() {
	collisions();

	var mult = 3;
	var _ropeAngleAcceleration = -0.2* dcos(ropeAngle);
	//_ropeAngleAcceleration += ((oGame.move_right - oGame.move_left) * 0.08);
	ropeAngleVelocity += _ropeAngleAcceleration*mult;
	//ropeAngleVelocity += _ropeAngleAcceleration*oGame.DT;
	ropeAngleVelocity = clamp(ropeAngleVelocity, -mult, mult);
	ropeAngle += ropeAngleVelocity;
	// DAMPING
	//ropeAngleVelocity *= 0.99;
	swingX = ropeX + lengthdir_x(ropeLength,ropeAngle);
	swingY = ropeY + lengthdir_y(ropeLength,ropeAngle);

	hsp = swingX - x;
	vsp = swingY - y;

	//var vine = argument0;

	if(oGame.buttons || oGame.pressed_buttons_held){
		player_state = PLAYERSTATE.JUMPING;
	}

	jumping();


	pos();

	launch_x = x;
	launch_y = y;

	player_state_check();
	check_for_ending();

	sprite_index = player_idle;
	if(hsp<0){
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}


}
