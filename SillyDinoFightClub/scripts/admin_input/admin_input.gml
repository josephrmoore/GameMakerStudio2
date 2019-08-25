//hsp = 0;
//vsp = 0;

if(player_num == 1){
	if(key_p1_up){
		vsp--;
	}
	if(key_p1_down_pressed){
		vsp++;
	}
	if(key_p1_left_pressed){
		hsp--;
	}
	if(key_p1_right_pressed){
		hsp++;
	}
} else if (player_num == 2){
	if(key_p2_up){
		vsp--;
	}
	if(key_p2_down_pressed){
		vsp++;
	}
	if(key_p2_left_pressed){
		hsp--;
	}
	if(key_p2_right_pressed){
		hsp++;
	}
}

	