/// @description Insert description here
// You can write your code in this editor

switch (game_state) {
	case GAMESTATE.MAINMENU: 
		GameState_MainMenu_Draw();
		break;
	case GAMESTATE.LEVELS: 
		GameState_Levels_Draw();
		break;
	//case GAMESTATE.ENDING: 
	//	GameState_Ending_Draw();
	//	break;
	//case GAMESTATE.CREDITS:
	//	GameState_CreditsDraw();
	//	break;
	//case GAMESTATE.PAUSED:
	//	GameState_PausedDraw();
	//	break;
}