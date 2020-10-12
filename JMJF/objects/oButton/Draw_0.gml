/// @description Insert description here
// You can write your code in this editor

if (image_index == 0 && pressed){
	image_speed = 1;
}

if(image_index == (image_number-1)){
	image_speed = 0;
	sprite_index = sButtonClicked;
//	draw_sprite(sButtonClicked,(image_number-1),x,y);
}

//if(sprite_index != noone){
	draw_self();
//}

