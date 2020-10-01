function lvl2_swap() {
	show_debug_message(string("BEGIN: " + string(oGame.lvl2_switch)));
	if(oGame.lvl2_switch){
		with(oLadder){
			// assigned ladder at birth
			if(alab){
				instance_change(oPole, false);
			}	
		}
		with(oLadderEnd){
			if(alab){
				instance_change(oPoleEnd, false);
			}
		}
		
		with(oPole){
			if(!alab){
				instance_change(oLadder, false);
			}
		}

		with(oPoleEnd){
			if(!alab){
				instance_change(oLadderEnd, false);
			}
		}
	} else {
		with(oLadder){
			if(!alab){
				instance_change(oPole, false);
			}	
		}
		with(oLadderEnd){
			if(!alab){
				instance_change(oPoleEnd, false);
			}
		}
		
		with(oPole){
			if(alab){
				instance_change(oLadder, false);
			}
		}

		with(oPoleEnd){
			if(alab){
				instance_change(oLadderEnd, false);
			}
		}
	}
	oGame.lvl2_switch = !oGame.lvl2_switch;
	show_debug_message(string("END: " + string(oGame.lvl2_switch)));


}
