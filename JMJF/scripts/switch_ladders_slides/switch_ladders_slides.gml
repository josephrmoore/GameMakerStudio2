// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function switch_ladders_slides(){
	if(oGame.slides_vines_toggle){
		with(oVine){
			// assigned vine at birth
			if(avab){
				instance_change(oSlide, false);
			}	
		}
		with(oVineEnd){
			if(avab){
				instance_change(oSlideEnd, false);
			}
		}
		
		with(oVineTop){
			if(avab){
				instance_change(oSlideTop, false);
			}
		}
		
		with(oSlide){
			if(!avab){
				instance_change(oVine, false);
			}
		}

		with(oSlideEnd){
			if(!avab){
				instance_change(oVineEnd, false);
			}
		}
		with(oSlideTop){
			if(!avab){
				instance_change(oVineTop, false);
			}
		}
	} else {
		with(oVine){
			if(!avab){
				instance_change(oSlide, false);
			}	
		}
		with(oVineEnd){
			if(!avab){
				instance_change(oSlideEnd, false);
			}
		}
		with(oVineTop){
			if(!avab){
				instance_change(oSlideTop, false);
			}
		}
		
		with(oSlide){
			if(avab){
				instance_change(oVine, false);
			}
		}

		with(oSlideEnd){
			if(avab){
				instance_change(oVineEnd, false);
			}
		}
		with(oSlideTop){
			if(avab){
				instance_change(oVineTop, false);
			}
		}
	}
	oGame.slides_vines_toggle = !oGame.slides_vines_toggle;
}