if(key_left || key_right){
	if(has_sticky_hang && mod_sticky_hang){
		hang_grv = 0;
	}
	grv = hang_grv;
	vsp = grv;
	jumps = 0;
	dashes = 0;
} else {
	location = PLAYERLOCATION.AIRBORNE;
}