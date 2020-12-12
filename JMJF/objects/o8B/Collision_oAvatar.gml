/// @description Insert description here
// You can write your code in this editor
var current_room = room_get_name(room);
if(current_room == "level8"){
	room_goto(level8B);
} else if(current_room == "level8B"){
	with(oDoor){
		if(x < 320){
			opened = false;
		}
	}
}