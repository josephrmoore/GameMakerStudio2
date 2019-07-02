// Jumping

if(key_jump){
	if(jumps < max_jumps){
		vsp = -jSpeed;
		grounded = false;
		jumps++;
	}
	if(hanging_left || hanging_right){
		alarm[0] = 5;
		pushback = true;
	}
	if(pushback){
		hsp -= (facing * 5);
	}
}

if (!grounded && !key_jump_held) vsp = max(vsp, -jSpeed/4);