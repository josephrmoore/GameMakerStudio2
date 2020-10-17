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
		oGame.teleportation = false;
		set_palette(shPie1, shPie2, shPie3, shPie4, shPie5);
		break;
	case "level2":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP11, shP12, shP13, shP14, shP15);
		break;
	case "level3":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP21, shP22, shP23, shP24, shP25);
		break;
	case "level4":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP31, shP32, shP33, shP34, shP35);
		break;
	case "level5":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		set_palette(shP41, shP42, shP43, shP44, shP45);
		break;
	case "level6":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		break;
	case "level7":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		break;
	case "level8":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		oGame.shaders_on = false;
		break;
	case "level9":
		start_timeline(tLevelIntro);
		oGame.slides_vines_togglable = false;
		oGame.teleportation = false;
		oGame.shaders_on = false;
		break;
}