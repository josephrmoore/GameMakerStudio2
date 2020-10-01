// data
oGame.finished_game = true;
oGame.last_level_finished = 0;
oPlayer.has_double_jump = false;
oPlayer.has_high_jump = false;
oPlayer.has_parachute = false;
oPlayer.has_pole_climb = false;
SaveGame("jumpydata.sav");
SaveEndingState("jumpydefeated.sav");