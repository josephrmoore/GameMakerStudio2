/// @description Insert description here
// You can write your code in this editor
input();
switch(room){
	case title:
		if(any_key){
			room_goto(setup);
		}
		break;
	case setup:
		if(key_left){
			setup_highlighted = 0;
		}
		if(key_right){
			setup_highlighted = 1;
		}
		if(setup_highlighted == 0){
			if(key_up){
				num_frogs = clamp(num_frogs+1, 1, 4);
			}
			if(key_down){
				num_frogs = clamp(num_frogs-1, 1, 4);
			}
		} else if(setup_highlighted == 1){
			if(key_up){
				num_lilypads = clamp(num_lilypads+1, 1, 4);
			}
			if(key_down){
				num_lilypads = clamp(num_lilypads-1, 1, 4);
			}
		}
		if(key_enter){
			room_goto(gameboard);
		}
}