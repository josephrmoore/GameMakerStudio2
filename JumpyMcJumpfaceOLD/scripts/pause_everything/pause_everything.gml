function pause_everything(argument0) {
	var b = argument0;

	if(b){
		oPlayer.is_paused = true;
		oElevator.is_paused = true;
		oElevatorOutro.is_paused = true;
		oCannon.is_paused = true;
		if(instance_exists(oBullet)){
			oBullet.is_paused = true;
		}
		audio_pause_all();
		timeline_running = false;
	} else {
		oPlayer.is_paused = false;
		oElevator.is_paused = false;
		oElevatorOutro.is_paused = false;
		oCannon.is_paused = false;
		if(instance_exists(oBullet)){
			oBullet.is_paused = false;
		}
		audio_resume_all();
		timeline_running = true;
	}


}
