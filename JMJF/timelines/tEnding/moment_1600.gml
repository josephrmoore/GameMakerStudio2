// start credits sequence
show_debug_message("credits");
door_open();
oAvatar.controllable = true;
oGame.game_state = GAMESTATE.ENDING;
oGame.move_right = true;
oCamera.follow = oAvatar;