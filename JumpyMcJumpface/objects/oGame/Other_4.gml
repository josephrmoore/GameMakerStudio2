/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
oGame.game_state = GAMESTATE.LEVELS;
switch(current_room){
	case "mainMenu":
		audio_play_sound(aMainMenu,100,true);
		LoadLevelStats("jumpydata.sav");
		level_number = 0;
		oGame.game_state = GAMESTATE.MAINMENU;
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
		lvl4_tilemaps[0] = layer_tilemap_get_id("button1");
		lvl4_tilemaps[1] = layer_tilemap_get_id("button2");
		lvl4_tilemaps[2] = layer_tilemap_get_id("button3");
		lvl4_tilemaps[3] = layer_tilemap_get_id("button4");
		lvl4_tilemaps[4] = layer_tilemap_get_id("button5");
		lvl4_tilemaps[5] = layer_tilemap_get_id("button6");
		lvl4_tilemaps[6] = layer_tilemap_get_id("button7");
		lvl4_tilemaps[7] = layer_tilemap_get_id("button8");
		for(var i=0; i<8; i++){
			lvl4_tilemaps_active[i] = false;
		}
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