/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y;

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
shoot = keyboard_check_pressed(ord("Z"));


//show_debug_message(shoot);

if(key_left){
	gun_dir = 180;
}

if(key_right){
	gun_dir = 0;
}

if(key_up){
	if(key_right){
		image_angle = 45;
	} else if(key_left){
		image_angle = 135;
	} else {
		image_angle = 90;
	}
} else {
	if(!oPlayer.grounded && key_down){
		if(key_left){
			image_angle = 225;
		} else if(key_right){
			image_angle = 315;
		} else {
			image_angle = 270;
		}
	} else {
		image_angle = gun_dir;
	}
}

--firing_delay;

if(shoot && firing_delay<0){
	firing_delay = 5;
	with(instance_create_layer(x,y,"Bullets",oBullet)){
		speed = 15;
		direction = other.image_angle + random_range(-1,1);;
//		
	}
}