// attach to oAvatar object
function left_right() {
	
	current_direction = oGame.move_right - oGame.move_left;
	
	if(oGame.move_left || oGame.move_right){
	    hsp = approach(hsp, (msp*current_direction), asp);
	} else {
	    hsp = approach(hsp,0,dsp);
	}
}
