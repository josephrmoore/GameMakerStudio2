/// @description Insert description here
// You can write your code in this editor

var current_room = room_get_name(room);

switch(current_room){
	case "mainMenu":
		audio_play_sound(aMainMenu, 100, true);
		break;
	case "level1":
		// rules for level
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		break;
	case "level2":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = true;
		break;
	case "level3":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		break;
	case "level4":
		start_timeline(tLevelIntro);
		break;
	case "level5":
		start_timeline(tLevelIntro);
		break;
	case "level6":
		start_timeline(tLevelIntro);
		break;
	case "level7":
		start_timeline(tLevelIntro);
		break;
	case "level8":
		start_timeline(tLevelIntro);
		break;
	case "level9":
		start_timeline(tLevelIntro);
		break;
}