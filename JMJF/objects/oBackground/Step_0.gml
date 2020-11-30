/// @description Insert description here
// You can write your code in this editor
if(oGame.game_state == GAMESTATE.MAINMENU){
	if(alarm[0] <= 0){
		alarm[0] = 60;
	}
} else {
	alarm[0] = -1;
}