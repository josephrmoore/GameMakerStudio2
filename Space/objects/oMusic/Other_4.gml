/// @description Insert description here
// You can write your code in this editor
var roomname = room_get_name(room);
audio_stop_all();
switch(roomname){
	case "plains":
		audio_play_sound(sndPlains, 1000, true);
		break;
	case "testroom":
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "mountainsA":
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "mountainsB":
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "mountainsC":
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "mountainsD":
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "mountainsE":
		audio_play_sound(sndMountains, 1000, true);
		break;
	case "dead":
		audio_play_sound(sndDead, 1000, true);
		break;
	case "title":
		audio_play_sound(sndTitle, 1000, true);
		break;
}