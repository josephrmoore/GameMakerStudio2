/// @description Insert description here
// You can write your code in this editor


if(oPlayer.key_left || oPlayer.key_right){
	horiz_wave = true;
} else {
	horiz_wave = false;
}

if(oPlayer.key_up || oPlayer.key_down){
	vert_wave = true;
} else {
	vert_wave = false;
}

x = oPlayer.x + oPlayer.facing*(oPlayer.sprite_width/2);
y = oPlayer.y - (oPlayer.sprite_height/4);