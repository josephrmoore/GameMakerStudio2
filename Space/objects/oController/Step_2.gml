/// @description Insert description here
// You can write your code in this editor

switch(current_room){
	case "init":
		if (audio_group_is_loaded(Music)){
			room_goto(title);
		}
	break;
	case "title":
		if(key_any){
			if(intro_animation_on){
				// skip to end
				intro_animation_on = false;
				with(oShipInside){
					instance_destroy();
				}
				with(oShipSide){
					instance_destroy();
				}
				oCameraTitle.x = 3726;
				oCameraTitle.moving = false;
				oPlanet.rising = false;
				oPlanet.y = 684;
				screen_state = SCREENSTATE.TITLE;
				//show_debug_message(audio_sound_get_track_position(sndTitle));
				
				//audio_sound_set_track_position(asset_get_index(sndTitle), 20);
				//show_debug_message(audio_sound_get_track_position(sndTitle));
			} else {
				room_goto(data);
				screen_state = SCREENSTATE.DATA;
			}
		}
	break;
	case "dead":
		if(key_any) {
			game_restart();
		}
	break;
	case "data":
		
	break;
	default:
	break;
}