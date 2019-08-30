/// @description Insert description here
// You can write your code in this editor
if(oPlayer.has_gun){
	instance_create_layer(0,0,"Instances",oGun);
}

instance_create_layer(10,10,"Instances",oCamera);

switch(room){
	case start:
		if(story_state == STORY.FIRSTPLAY){
			with(oFairy){
				path_start(p_start_fairy_entrance,20,path_action_stop,true);
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