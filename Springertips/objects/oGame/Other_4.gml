/// @description Insert description here
// You can write your code in this editor

switch(room_get_name(room)){ 
	case "mainmenu":
		room_goto(r1);
		break;
	case "r1":
		var len;
len = audio_sound_length(aR1);
audio_play_sound(aR1, 1, false);
alarm[0] = room_speed * len;

		break;
}