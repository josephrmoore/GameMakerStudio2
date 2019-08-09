/// @description Insert description here
// You can write your code in this editor
current_room = room_get_name(room);

current_room = multiple_rooms(current_room);
current_music = current_room;

switch(current_room){
	case "dead":
		// play music
		audio_stop_all();
		audio_play_sound(sndDead, 1000, true);
		break;
	case "title":
		// play music
		audio_stop_all();
		audio_play_sound(sndTitle, 1000, true);
		break;
	case "init":
		break;
	default:
		if(story_progress == STORY.FIRSTPLAY && current_room == "plains"){
			if(ds_map_empty(player_stats)){
				access_player_stats("create");
			} else {
				access_player_stats("set");
			}
			story_progress = STORY.BEGIN;
		}
		if(current_room == "found" && story_progress == STORY.BEGIN){
			story_progress = STORY.FOUND;
		}
		if(room_get_name(room)== "runA" && story_progress == STORY.AMBUSH){
			story_progress = STORY.RUN;
		}
		// play music
		music_module();
		// Player position in new rooms
		if(player_x != -1 && player_y != -1){
			oPlayer.x = player_x;
			oPlayer.y = player_y;
		}
		if(!ds_map_empty(player_stats)){
			access_player_stats("load");
		}
		for(var i=0; i<array_length_1d(upgrade_srs); i++){
			if(srs_in_room(upgrade_srs[i])){
				for(var j=0; j<instance_number(oPickupUpgrade); j++){
					var inst = instance_find(oPickupUpgrade, j);
					if(srs_in_room(get_srs_obj(inst))){
						inst.collected = true;
					}
				}
			}
		}
		for(var i=0; i<array_length_1d(mod_srs); i++){
			if(srs_in_room(mod_srs[i])){
				for(var j=0; j<instance_number(oPickupMod); j++){
					var inst = instance_find(oPickupMod, j);
					if(srs_in_room(get_srs_obj(inst))){
						inst.collected = true;
					}
				}
			}
		}
		for(var i=0; i<array_length_1d(energy_tank_srs); i++){
			if(srs_in_room(energy_tank_srs[i])){
				for(var j=0; j<instance_number(oPickupEnergyTank); j++){
					var inst = instance_find(oPickupEnergyTank, j);
					if(srs_in_room(get_srs_obj(inst))){
						inst.collected = true;
						show_debug_message(inst);
					}
				}
			}
		}
		for(var i=0; i<array_length_1d(missile_upgrade_srs); i++){
			if(srs_in_room(missile_upgrade_srs[i])){
				for(var j=0; j<instance_number(oPickupMissileUpgrade); j++){
					var inst = instance_find(oPickupMissileUpgrade, j);
					if(srs_in_room(get_srs_obj(inst))){
						inst.collected = true;
					}
				}
			}
		}
		break;
}