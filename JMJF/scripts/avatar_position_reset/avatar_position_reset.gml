// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function avatar_position_reset(){
	if(oGame.teleportation_at_death){
		with(oTeleport){
			if(x == oAvatar.last_teleport_x && y == oAvatar.last_teleport_y){
				oAvatar.x = x;
				oAvatar.y = y;
				oAvatar.launch_y = y;
				alarm[0] = 45;
				is_visible = true;
				audio_play_sound(aTeleport,100,false);
			}
		}
	} else {
		oAvatar.x = oRiserIntro.x;
		oAvatar.y = oRiserIntro.y-16;
	}
}