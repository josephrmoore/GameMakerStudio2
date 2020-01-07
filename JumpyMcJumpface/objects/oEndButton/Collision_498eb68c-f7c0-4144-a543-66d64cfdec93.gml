/// @description Insert description here
// You can write your code in this editor
if(alarm[0] == -1){
	alarm = 120;
}

if(jumps = 10){
	oGame.buttons_pressed_this_level += 1;
	button_state = BUTTONSTATE.CLICKED;
	audio_play_sound(aEndButton, 100, false);
	oGame.timeline_index = tEnding;
	oGame.timeline_position = 0;
	oGame.timeline_speed = 1;
}

