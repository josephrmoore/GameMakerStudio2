/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
switch(current_room){
	case "mainMenu":
		audio_play_sound(aMainMenu,100,true);
		LoadLevelStats("jumpydata.sav");
		level_number = 0;
		break;
	// default for level rooms
	case "level1":
		level_name = "Superfun";
		level_number = 1;
		level_start();
		break;
	case "level2":
		level_name = "Rockin'";
		level_number = 2;
		level_start();
		break;
	case "level3":
		level_name = "Telltale";
		level_number = 3;
		level_start();
		break;
	case "level4":
		level_name = "Erasmus";
		level_number = 4;
		level_start();
		break;
	case "level5":
		level_name = "Gloved";
		level_number = 5;
		level_start();
		break;
	case "level6":
		level_name = "Hallelujah";
		level_number = 6;
		level_start();
		break;
	case "level7":
		level_name = "Snickerdoodle";
		level_number = 7;
		level_start();
		break;
	case "level8":
		level_name = "Throwdown";
		level_number = 8;
		level_start();
		break;
	case "level9":
		level_name = "Big Boy";
		level_number = 9;
		level_start();
		break;
}