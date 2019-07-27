/// @description Insert description here
// You can write your code in this editor
input();

var roomname = room_get_name(room);

switch(roomname){
	case "title":
	if(key_any){
		room_goto(plains);
	}
	break;
	default:
	break;
}