// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause_everything(argument0) {
	var b = argument0;

	if(b){
		oAvatar.is_paused = true;
		oRiserIntro.is_paused = true;
		oRiserOutro.is_paused = true;
		oCannon.is_paused = true;
		if(instance_exists(oBullet)){
			oBullet.is_paused = true;
		}
		audio_pause_all();
		timeline_running = false;
	} else {
		oAvatar.is_paused = false;
		oRiserIntro.is_paused = false;
		oRiserOutro.is_paused = false;
		oCannon.is_paused = false;
		if(instance_exists(oBullet)){
			oBullet.is_paused = false;
		}
		audio_resume_all();
		timeline_running = true;
	}


}
