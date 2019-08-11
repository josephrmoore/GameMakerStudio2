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
	case "data":
		get_room_from_save(0);
		get_room_from_save(1);
		get_room_from_save(2);
		//var s0 = instance_find(oSaveSlot,0);
		//var s1 = instance_find(oSaveSlot,1);
		//var s2 = instance_find(oSaveSlot,2);
	
		//if(file_exists("save0.sav")){
		//	var save_data = LoadJsonFromFile("save0.sav");
		//	s0.current_room = ds_map_find_value(save_data, "room");	
		//	s0.has_save_data = true;
		//} 
		//if(file_exists("save1.sav")){
		//	var save_data = LoadJsonFromFile("save1.sav");
		//	s1.current_room = ds_map_find_value(save_data, "room");	
		//	s1.has_save_data = true;
		//} 
		//if(file_exists("save2.sav")){
		//	var save_data = LoadJsonFromFile("save2.sav");
		//	s2.current_room = ds_map_find_value(save_data, "room");	
		//	s2.has_save_data = true;
		//}
		break;
	default:
		SaveGame("save"+string(oController.save_data_file)+".sav");
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
		
		// set "collected" to true for anything on these lists
		srs_loop(upgrade_srs, oPickupUpgrade);
		srs_loop(mod_srs, oPickupMod);
		srs_loop(energy_tank_srs, oPickupEnergyTank);
		srs_loop(missile_upgrade_srs, oPickupMissileUpgrade);
		
		//for(var i=0; i<ds_list_size(upgrade_srs); i++){
		//	if(srs_in_room(ds_list_find_value(upgrade_srs,i))){
		//		for(var j=0; j<instance_number(oPickupUpgrade); j++){
		//			var inst = instance_find(oPickupUpgrade, j);
		//			if(srs_in_room(get_srs_obj(inst))){
		//				inst.collected = true;
		//			}
		//		}
		//	}
		//}
		//for(var i=0; i<ds_list_size(mod_srs); i++){
		//	if(srs_in_room(ds_list_find_value(mod_srs, i))){
		//		for(var j=0; j<instance_number(oPickupMod); j++){
		//			var inst = instance_find(oPickupMod, j);
		//			if(srs_in_room(get_srs_obj(inst))){
		//				inst.collected = true;
		//			}
		//		}
		//	}
		//}
		//for(var i=0; i<ds_list_size(energy_tank_srs); i++){
		//	if(srs_in_room(ds_list_find_value(energy_tank_srs, i))){
		//		for(var j=0; j<instance_number(oPickupEnergyTank); j++){
		//			var inst = instance_find(oPickupEnergyTank, j);
		//			if(srs_in_room(get_srs_obj(inst))){
		//				inst.collected = true;
		//				show_debug_message(inst);
		//			}
		//		}
		//	}
		//}
		//for(var i=0; i<ds_list_size(missile_upgrade_srs); i++){
		//	if(srs_in_room(ds_list_find_value(missile_upgrade_srs, i))){
		//		for(var j=0; j<instance_number(oPickupMissileUpgrade); j++){
		//			var inst = instance_find(oPickupMissileUpgrade, j);
		//			if(srs_in_room(get_srs_obj(inst))){
		//				inst.collected = true;
		//			}
		//		}
		//	}
		//}
		break;
}