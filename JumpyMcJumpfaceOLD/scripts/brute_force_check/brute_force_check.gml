function brute_force_check(argument0) {
	var obj = argument0;

	if (place_meeting(x,y,obj)) {
		for(var i = 0; i< 1000; i++){
			// RIGHT
			if(!place_meeting(x+i, y, obj)){
				x += i;
				break;
			}
			// LEFT
			if(!place_meeting(x-i, y, obj)){
				x -= i;
				break;
			}
			// UP
			if(!place_meeting(x, y-i, obj)){
				y -= i;
				break;
			}
			// DOWN
			if(!place_meeting(x, y+i, obj)){
				y += i;
				break;
			}
			// TOP RIGHT
			if(!place_meeting(x+i, y-i, obj)){
				x += i;
				y -= i;
				break;
			}
			// TOP LEFT
			if(!place_meeting(x-i, y-i, obj)){
				x -= i;
				y -= i;
				break;
			}
			// BOTTOM RIGHT
			if(!place_meeting(x+i, y+i, obj)){
				x += i;
				y += i;
				break;
			}
			// BOTTOM LEFT
			if(!place_meeting(x-i, y+i, obj)){
				x -= i;
				y += i;
				break;
			}	
		}

	}


}
