/// @description Insert description here
// You can write your code in this editor
if(oGame.gamepad_plugged_in){
	oController.is_visible = true;
	oKeyboard.is_visible = false;
} else {
	oController.is_visible = false;
	oKeyboard.is_visible = true;
}