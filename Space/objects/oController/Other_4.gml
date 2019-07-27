/// @description Insert description here
// You can write your code in this editor
var roomname = room_get_name(room);

roomname = multiple_rooms(roomname);
current_music = roomname;

switch(roomname){
	case "dead":
		// play music
		audio_stop_all();
		audio_play_sound(sndDead, 1000, true);
		break;
	case "title":
		// play music
		audio_stop_all();
		audio_play_sound(sndTitle, 1000, true);
		break;
	default:
		// play music
		music_module();
		// Player position in new rooms
		if(player_x != -1 && player_y != -1){
			oPlayer.x = player_x;
			oPlayer.y = player_y;
		}
		
		if(!ds_map_empty(player_stats)){
			access_player_stats("get");
		}
		
		break;
}