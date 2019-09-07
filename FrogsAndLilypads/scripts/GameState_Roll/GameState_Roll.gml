var roll = roll6s();
oBrain.this_roll = roll[0] - 1; // 0-5
if(oBrain.this_roll == 5){
	game_state = GAMESTATE.PREDATORS;
} else {
	game_state = GAMESTATE.MOVE;
}