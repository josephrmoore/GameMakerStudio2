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
		access_player_stats("create");
		break;
	default:
		for(var i=0; i<ds_list_size(oController.player_mods_activated); i++){
			show_debug_message(ds_list_find_value(oController.player_mods_activated, i));
		}
		SaveGame("save"+string(oController.save_data_file)+".sav");
		if(story_progress == STORY.FIRSTPLAY && current_room == "plains"){
			if(ds_map_empty(player_stats)){
				access_player_stats("create");
			} else {
				access_player_stats("set");
			}
			story_progress = STORY.BEGIN;
			var tm = instance_create_layer(oPlayer.x, oPlayer.y, "Player", oTextBoxManager);
			tm.last_text_box = 1;
			var t1 = instance_create_layer(oPlayer.x, oPlayer.y, "Player", oTextBox);
			t1.line1 = "RESCUE THE LOST SCIENTISTS";
			t1.line2 = "YOU ARE THEIR ONLY HOPE";
			t1.order = 1;
			var t2 = instance_create_layer(oPlayer.x, oPlayer.y, "Player", oTextBox);
			t2.line1 = "EMERGENCY";
			t2.line2 = "UNKNOWN PLANET";
			t2.line3 = "ASSISTANCE NEEDED";
			t2.line4 = "NO INFORMATION AVAILABLE";
			t2.order = 0;
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
		break;
}