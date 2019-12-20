/// @description Insert description here
// You can write your code in this editor
if(button_state == BUTTONSTATE.UNCLICKED){
	oGame.buttons_pressed_this_level += 1;
	button_state = BUTTONSTATE.CLICKED;
}