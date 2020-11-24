/// @description Insert description here
// You can write your code in this editor

enum GAMESTATE {
	MAINMENU,
	LEVELINTRO,
	LEVEL,
	LEVELOUTRO,
	ENDING
}

enum FIREWORKS {
	WHITE,
	RED,
	ORANGE,
	YELLOW,
	GREEN,
	BLUE,
	PURPLE
}

fireworks_shaders[FIREWORKS.WHITE] = shWhite;
fireworks_shaders[FIREWORKS.RED] = shRed;
fireworks_shaders[FIREWORKS.ORANGE] = shOrange;
fireworks_shaders[FIREWORKS.YELLOW] = shYellow;
fireworks_shaders[FIREWORKS.GREEN] = shGreen;
fireworks_shaders[FIREWORKS.BLUE] = shBlue;
fireworks_shaders[FIREWORKS.PURPLE] = shPurple;

game_state = GAMESTATE.MAINMENU;