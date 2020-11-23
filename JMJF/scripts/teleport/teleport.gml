// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function teleport(argument0){
	var button = argument0;
	with(oTeleport){
		if(button.button_id == button_id){
			oAvatar.x = x;
			oAvatar.y = y;
			oAvatar.launch_y = y;
			alarm[0] = 45;
			is_visible = true;
			audio_play_sound(aTeleport,100,false);
		}
	}
}