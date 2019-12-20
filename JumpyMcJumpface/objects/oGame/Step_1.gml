/// @description Insert description here
// You can write your code in this editor
input();


switch (game_state) {
	case GAMESTATE.MAINMENU: 
		GameState_MainMenu();
		break;
	case GAMESTATE.LEVELS: 
		GameState_Levels();
		break;
	case GAMESTATE.ENDING: 
		GameState_Ending();
		break;
	case GAMESTATE.CREDITS:
		GameState_Credits();
		break;
	case GAMESTATE.PAUSED:
		GameState_Paused();
		break;
}