// Jumping

if(key_jump){
	if(jumps < max_jumps){
		vsp = -jSpeed;
		grounded = false;
		jumps++;
	}
	if(location = PLAYERLOCATION.HANGING){
		alarm[0] = 5;
		pushback = true;
	}
	if(pushback){
		hsp -= (facing * 5);
	}
	//if(jumps>1){
	//	image_speed = 1;
	//	if(image_index < jump_index_start || image_index >= jump_index_end){
	//		image_index = jump_index_start;
	//	}
		
	//}
}

if (location == PLAYERLOCATION.AIRBORNE && !key_jump_held) vsp = max(vsp, -jSpeed/4);

