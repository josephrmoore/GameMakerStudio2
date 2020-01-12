oPlayer.player_state = PLAYERSTATE.DEAD;
audio_play_sound(aDead, 1000, false);
oGame.timeline_index = tDeath;
oGame.timeline_position = 0;
oGame.timeline_running = true;
instance_destroy(oBullet);