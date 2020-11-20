// start end riser rising w/avatar

//oPlayer.rising = true;
//oPlayer.controllable = false;
//oElevatorOutro.moving = true;
game_state = GAMESTATE.LEVELOUTRO;
audio_stop_all();
audio_play_sound(aLevelOutro,100,false);
lose_control();
instance_destroy(oBullet);
oDoor.opened = false;
//oGame.show_gui = false;
//oGame.died_yet = false;