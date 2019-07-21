with(oPlayer){
	var horiz = argument[0];
	var vert = vsp;

	if(argument_count > 1){
		vert = argument[1];
	}

	alarm[0] = 5;
	pushback = true;
	if(pushback){
		hsp = horiz;
		vsp = vert;
		player_tile_collision();
	}
}