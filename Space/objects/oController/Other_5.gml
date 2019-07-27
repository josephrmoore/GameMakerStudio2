/// @description Insert description here
// You can write your code in this editor
var roomname = room_get_name(room);

roomname = multiple_rooms(roomname);
last_music = roomname;
switch(roomname){
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
		show_debug_message(player_stats);
		break;
}
