/// @description Insert description here
// You can write your code in this editor
if(alarm[0] == -1){
	alarm = 120;
}

if(jumps == 10){
	oGame.buttons_pressed_this_level += 1;
	button_state = BUTTONSTATE.CLICKED;
	audio_play_sound(aEndButton, 100, false);
	oGame.timeline_index = tEnding;
	oGame.timeline_position = 0;
	oGame.timeline_speed = 1;
}


with(oPlayer){
var obj = other;

// Horizontal object collision

if (place_meeting(x+hsp,y,obj)) {
		while(!place_meeting(x+sign(hsp),y,obj)){
			x = x + sign(hsp);
			show_debug_message("meeting x");
		}
		hsp = 0;
		//player_tile_collision();
}


// Vertical object collision

if (place_meeting(x,y+vsp,obj)) {
		while(!place_meeting(x,y+sign(vsp),obj)){
			y = y + sign(vsp);
			show_debug_message("meeting y");
		}
		vsp = 0;
		grounded = true;
		jumps = 0;
		//player_tile_collision();
}
}