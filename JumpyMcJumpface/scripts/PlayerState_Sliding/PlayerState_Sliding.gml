grounded = false;
left_right();
jumping();
if(place_meeting(x,y,oPole)){
	if(oPlayer.has_pole_climb){
		climb();
	} else {
		slide();
	}
} else {
	grav();
}
player_tile_collision();
x+=hsp;
y+=vsp;

launch_x = x;
launch_y = y;

if(!audio_is_playing(aSliding)){
	audio_play_sound(aSliding,100,false);
}

check_for_ending();
player_state_check();

sprite_index = player_sliding;