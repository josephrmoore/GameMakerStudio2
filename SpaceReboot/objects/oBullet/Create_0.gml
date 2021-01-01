/// @description Insert description here
// You can write your code in this editor


if(oController.key_left || oController.key_right){
	horiz_wave = true;
} else {
	horiz_wave = false;
}

if(oController.key_up || oController.key_down){
	vert_wave = true;
} else {
	vert_wave = false;
}

x = oPlayer.x;
y = oPlayer.y;