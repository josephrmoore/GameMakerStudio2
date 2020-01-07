/// @description Insert description here
// You can write your code in this editor
if(button_state == BUTTONSTATE.UNCLICKED){
	oGame.buttons_pressed_this_level += 1;
	button_state = BUTTONSTATE.CLICKED;
	audio_play_sound(aButtonClick, 100, false);
}

// this is still bad
switch(image_index){
	case 0:
		oPlayer.y = y;
		break;
	case 1:
		oPlayer.y = y+3;
		break;
	case 2:
		oPlayer.y = y+6;
		break;
	case 3:
		oPlayer.y = y+9;
		break;
}


//prevent button resurrections
if(oPlayer.player_state != PLAYERSTATE.FALLING && oPlayer.player_state != PLAYERSTATE.DEAD){
	oPlayer.player_state = PLAYERSTATE.IDLE;
}