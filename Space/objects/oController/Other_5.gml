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
		ds_map_add(player_stats,"hp",oPlayer.hp);
		ds_map_add(player_stats,"missiles",oPlayer.missiles);
		ds_map_add(player_stats,"max_jumps",oPlayer.max_jumps);
		ds_map_add(player_stats,"max_dashes",oPlayer.max_dashes);
		ds_map_add(player_stats,"has_missiles",oPlayer.has_missiles);
		ds_map_add(player_stats,"has_spread",oPlayer.has_spread);
		// add the restof the upgrades
		show_debug_message(player_stats);
		break;
}
