function click_button(argument0) {
	var instance = argument0;
	// click_button running
	if(!instance.pressed){
		oGame.buttons_pressed_this_level += 1;
		instance.pressed = true;
		audio_play_sound(aButtonClick, 100, false);
		// toggle slides/vines if game var is set
		if(oGame.slides_vines_togglable){
			switch_ladders_slides();
		}
		if(oGame.teleportation){
			teleport(instance);
		}
		// toggle ledges with matching button ids
		with (oLedge){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle hazards with matching button ids
		with (oHazard){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle ladder with matching button ids
		with (oLadder){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle ladder top with matching button ids
		with (oLadderTop){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle vine with matching button ids
		with (oVine){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle vine top with matching button ids
		with (oVineTop){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle slide with matching button ids
		with (oSlide){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle slide top with matching button ids
		with (oSlideTop){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		// toggle slide end with matching button ids
		with (oSlideEnd){
			if(button_id != 0 && instance.button_id == button_id){
				is_activated = !is_activated;
			}
		}
		if(instance_exists(oCannonController)){
			cannon_mod(instance.button_id);
		}
		
	}
}