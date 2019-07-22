/// @description Insert description here
// You can write your code in this editor
var roomname = room_get_name(room);
switch(roomname){
	case "room0":
		audio_stop_all();
		audio_play_sound(sndPlains, 1000, true);
		break;
	case "testroom":
		audio_stop_all();
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "dead":
		audio_stop_all();
		audio_play_sound(sndDead, 1000, true);
		break;
	case "title":
		audio_stop_all();
		audio_play_sound(sndTitle, 1000, true);
		break;
}