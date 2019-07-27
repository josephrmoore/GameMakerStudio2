var roomname = room_get_name(room);

roomname = multiple_rooms(roomname);

if(oController.current_music != oController.last_music){
	switch(roomname){
		case "plains":
			audio_stop_all();
			audio_play_sound(sndPlains, 1000, true);
			break;
		case "mountains":
			audio_stop_all();
			audio_play_sound(sndMountains, 1000, true);
			break;
		case "valley":
			audio_stop_all();
			audio_play_sound(sndValley, 1000, true);
			break;
		case "run":
			audio_stop_all();
			audio_play_sound(sndRun, 1000, true);	
			break;
	}

}