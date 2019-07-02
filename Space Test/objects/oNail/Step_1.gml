/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x+(oPlayer.sprite_width/2);
y = oPlayer.y;

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
swipe = keyboard_check_pressed(ord("X"));

if(key_left){
	nail_dir = 180;
}

if(key_right){
	nail_dir = 0;
}

if(key_up){
	image_angle = 90;
	x = oPlayer.x;
	y = oPlayer.y - (oPlayer.sprite_height/2);
} else {
	if(!oPlayer.grounded && key_down){
		image_angle = 270;
		x = oPlayer.x;
		y = oPlayer.y + (oPlayer.sprite_height/2);
	} else {
		image_angle = nail_dir;
		x = oPlayer.x+(oPlayer.sprite_width/2);
		y = oPlayer.y;
	}
}

if(swipe){
	image_speed = 1;
}

if (image_index > image_number - 1) {
    image_speed = 0;
	image_index = 0;
}

//--swipe_delay;

//if(swipe && swipe_delay<0){
//	swipe_delay = 100;
//	x = oPlayer.x+32;
//	image_speed = 1;
//} else {
//	x = oPlayer.x;
//	image_speed = 0;
//}