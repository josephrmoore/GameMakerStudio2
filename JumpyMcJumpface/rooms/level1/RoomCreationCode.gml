oGame.buttons_needed_this_level = 9;
oGame.buttons_pressed_this_level = 0;

oGame.timeline_index = tLevelIntro;
if(oGame.died_yet){
	oGame.timeline_position = 299;
} else {
	oGame.timeline_position = 0;
}
oGame.timeline_running = true;