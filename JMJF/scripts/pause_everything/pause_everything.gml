// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause_everything(argument0) {
	var b = argument0;

	if(b){
		oAvatar.is_paused = true;
		if(instance_exists(oRiserIntro)){
			oRiserIntro.is_paused = true;
		}
		if(instance_exists(oRiserOutro)){
			oRiserOutro.is_paused = true;
		}
		if(instance_exists(oCannon)){
			oCannon.is_paused = true;
		}
		if(instance_exists(oBullet)){
			oBullet.is_paused = true;
		}
		audio_pause_all();
		timeline_running = false;
		
	} else {
		oAvatar.is_paused = false;
		if(instance_exists(oRiserIntro)){
			oRiserIntro.is_paused = false;
		}
		if(instance_exists(oRiserOutro)){
			oRiserOutro.is_paused = false;
		}
		if(instance_exists(oCannon)){
			oCannon.is_paused = false;
		}
		if(instance_exists(oBullet)){
			oBullet.is_paused = false;
		}
		audio_resume_all();
		timeline_running = true;
	}


}
