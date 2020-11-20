/// @description Insert description here
// You can write your code in this editor
if (image_index == 0 && pressed){
	if(image_speed == -1){
		image_speed = 0;
		pressed = false;
	} else {
		image_speed = 1;
	}
}

if(image_index == (image_number-1)){
//	image_speed = 0;
	image_speed = -1;
//	draw_sprite(sButtonClicked,(image_number-1),x,y);
}

//if(sprite_index != noone){
//}


var cur_index = image_index;
if(button_state == 0){
	sprite_index = sButtonSpecialDown;
	image_index = cur_index;
} else {
	sprite_index = sButtonSpecialInverted;
	image_index = cur_index;
}

draw_self();