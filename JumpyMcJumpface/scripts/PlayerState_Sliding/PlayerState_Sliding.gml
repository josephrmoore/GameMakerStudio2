grounded = false;
left_right();
jumping();
if(place_meeting(x,y,oPole)){
	slide();
} else {
	grav();
}
player_tile_collision();
x+=hsp;
y+=vsp;

launch_x = x;
launch_y = y;

audio_play_sound(aSliding,100,false);

player_state_check();

sprite_index = player_sliding;