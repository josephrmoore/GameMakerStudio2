/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_duck = keyboard_check(vk_down); 
key_up = keyboard_check(vk_up);
key_up_released = keyboard_check_released(vk_up);

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

// Grounded/Airborne/Hang States

if(place_meeting(x,y+1,oWall)){
	grounded = true;
} else {
	grounded = false;
}

if (place_meeting(x-1,y,oWall) && !grounded){
	can_hang_left = true;
} else if (place_meeting(x+1,y,oWall) && !grounded) {
	can_hang_right = true;
} else {
	can_hang_left = false;
	can_hang_right = false;
}


if((can_hang_left || can_hang_right) && (key_left || key_right)){
	if(can_hang_left){
		vsp = 0;
		jumps = 0;
		hanging_left = true;
	} else if (can_hang_right){
		vsp = 0;
		jumps = 0;
		hanging_right = true;
	}
} else {
	hanging_right = false;
	hanging_left = false;
}


// Jump/Double Jump


if(grounded){
	jumps = 0;
	if(key_jump){
		++jumps;
		vsp = jump;
	}
} else {
	if(key_jump && jumps < max_jumps){
		++jumps;
		vsp = jump;
	}
	
}

// Horizontal collision

if (place_meeting(x+hsp,y,oWall)) {
	while(!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}


// Vertical collision

if (place_meeting(x,y+vsp,oWall)) {
	while(!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

x = x + hsp;
y = y + vsp;


if(jumps > 1){
	double_jumped = true;
} else {
	double_jumped = false;
}

//show_debug_message("right: ");
//show_debug_message(hanging_right);
//show_debug_message("left: ");
//show_debug_message(hanging_left);

// Animation

if(hanging_left || hanging_right){
	sprite_index = sPlayer;
} else {
	if(double_jumped){
		sprite_index = sPlayerDJ;
	} else {
		if(key_duck && grounded){
			sprite_index = sPlayerD;
		} else {
			if(hsp == 0){
				sprite_index = sPlayer;
			} else {
				sprite_index = sPlayerR;
				image_xscale = sign(hsp);
			}
		}
	}
}

