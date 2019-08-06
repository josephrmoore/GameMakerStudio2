/// @description Insert description here
// You can write your code in this editor
a = clamp(a+(roomfade*fade_rate),0,1);

if(a == 1){
	oController.player_x = targetX;
	oController.player_y = targetY;
	room_goto(targetRoom);
	roomfade = -1;
	if(oController.current_music != oController.last_music){
		audio_group_set_gain(Music, 1,300);
	}
}

if (a == 0 && roomfade == -1){
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(
	oCamera.x-(camera_get_view_width(view_current)/2),
	oCamera.y-(camera_get_view_height(view_current)/2)-64,
	oCamera.x + camera_get_view_width(view_current),
	oCamera.y + camera_get_view_height(view_current),
	false
);
draw_set_alpha(1);