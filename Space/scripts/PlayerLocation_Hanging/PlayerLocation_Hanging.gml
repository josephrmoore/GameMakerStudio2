if(oController.key_left || oController.key_right){
	if(has_sticky_hang && mod_sticky_hang){
		hang_grv = 0;
	}
	grv = hang_grv;
	vsp = grv;
	y += vsp;
	jumps = 0;
	dashes = 0;
} 