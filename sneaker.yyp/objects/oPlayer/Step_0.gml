// Check player identity
if (player_identity == "Sneaker"){

} else if (player_identity == "McBeaker") {

}

// Check player input

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_up = keyboard_check(vk_up);


// Apply speed
var horiz_move = key_right - key_left;
var vert_move = key_down - key_up;

hsp = horiz_move * walksp;
vsp = vert_move * walksp;

// Collision detection horiz

if (place_meeting(x+hsp,y,oWall)){
	while (!place_meeting(x+sign(hsp),y,oWall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

// Collision detection vert

if (place_meeting(x,y+vsp,oWall)){
	while (!place_meeting(x,y+sign(vsp),oWall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

// Animation

if(hsp != 0){
	sprite_index = sSneakerSideWalking;
	image_xscale = sign(hsp);
} else if (vsp < 0) {
	sprite_index = sSneakerBackWalking;
} else if (vsp > 0) {
	sprite_index = sSneakerFrontWalking;
} else {
	sprite_index = sSneakerFrontStill;
}

x = x+ hsp;
y = y + vsp;