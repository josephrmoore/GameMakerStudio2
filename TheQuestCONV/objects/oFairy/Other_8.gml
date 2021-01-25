/// @description Insert description here
// You can write your code in this editor

// trigger text box

switch(room){
	case start:
		if(oBrain.story_state == STORY.FIRSTPLAY){
			var t = instance_create_layer(250,125,"Instances",oText);
			var fairytext = oBrain.story_text[oBrain.story_state];
			if(is_array(fairytext)){
				t.text_chunk = fairytext;
			}
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