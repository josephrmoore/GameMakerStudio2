/// @description Insert description here
// You can write your code in this editor

enum GAMESTATE {
	MAINMENU,
	LEVELS,
	ENDING,
	CREDITS,
	PAUSED
}

enum MAINMENUITEMS {
	START,
	CONTINUE,
	LEVELSELECT,
	CONTROLS
}

game_state = GAMESTATE.MAINMENU;
LoadLevelStats("jumpydata.sav");
LoadEndingState("jumpydefeated.sav");