function jumping() {
	
	if(oGame.pressed_buttons){
		if(jumps < max_jumps || max_jumps < 0){
			vsp = -(jsp/60);
			if(max_jumps > 0){
				jumps++;
			}
		}
	}
	if (!oGame.pressed_buttons_held) {
		vsp = max(vsp, -(jsp/60)/4);
	}
}
