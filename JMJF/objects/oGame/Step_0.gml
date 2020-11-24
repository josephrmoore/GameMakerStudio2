/// @description Insert description here
// You can write your code in this editor
switch (game_state) {
	case GAMESTATE.MAINMENU: 
		Game_MainMenu();
		input();
		break;
	case GAMESTATE.LEVELINTRO: 
		Game_LevelIntro();
		break;
	case GAMESTATE.LEVEL: 
		Game_Level();
		input();
		break;
	case GAMESTATE.LEVELOUTRO: 
		Game_LevelOutro();
		break;
	case GAMESTATE.ENDING: 
		Game_Ending();
		break;
}

//show_debug_message("game state");
//show_debug_message(game_state);