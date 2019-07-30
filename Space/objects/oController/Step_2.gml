/// @description Insert description here
// You can write your code in this editor
input();

switch(current_room){
	case "init":
		if (audio_group_is_loaded(Music)){
			room_goto(title);
		}
	break;
	case "title":
		if(key_any){
			room_goto(plains);
		}
	break;
	case "dead":
		if(key_any) {
			game_restart();
		}
	break;
	default:
	break;
}