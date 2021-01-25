/// @description Insert description here
// You can write your code in this editor

switch(room){
	case start:
		if(story_state == STORY.FIRSTPLAY){
			if(callback_text == 1 && callback_fairy == 0){
				callback_fairy = 1;
				story_state = STORY.STARTQUEST;
				with(oFairy){
					path_start(p_start_fairy_exit,20,path_action_stop,true);					
				}
			}
			//var fairytext = story_text[story_state];
			//oBrain.textbox_remaining = array_length_1d(fairytext);
		}
		break;
	case hall:
		break;
	case fountain:
		break;
	case tower:
		break;
	case castle:
		break;
	case courtyard:
		break;
	case dungeon:
		break;
}