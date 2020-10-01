/// @description Insert description here
// You can write your code in this editor
input();
if(last_level_finished == 9 && !finished_game){
	finished_game = true;
}

DT = (delta_time/1000000)*target_frame_rate;

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