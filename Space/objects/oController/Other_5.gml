/// @description Insert description here
// You can write your code in this editor
last_music = current_room;
switch(current_room){
	case "dead":
		break;
	case "title":
		break;
	case "init":
		break;
	default:
		if(ds_map_empty(player_stats)){
			access_player_stats("create");
		} else {
			access_player_stats("set");
		}
		//show_debug_message(player_stats);
		break;
}
