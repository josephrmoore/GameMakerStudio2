/// @description Insert description here
// You can write your code in this editor
if(text_sprite != -1){
	draw_sprite_ext(text_sprite, 0, x, y, 1, 1, 0, c_white, text_alpha);
}

if(alarm[0] <= 0){
	alarm[0] = 10;
}