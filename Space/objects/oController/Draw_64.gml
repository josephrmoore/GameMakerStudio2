/// @description Insert description here
// You can write your code in this editor

switch(current_room){
	case "title":
		if(!intro_animation_on){
		draw_set_font(fH1);
		draw_set_color(c_white)
		draw_text(180, 200, "SPACE");
		draw_set_font(fH2);
		draw_text(160, 350, "PRESS ANY BUTTON TO BEGIN");
		}
	break;
	case "init":
		break;
	case "data":
		draw_set_color(c_white);
		draw_set_font(fH2);
		var s0 = instance_find(oSaveSlot, 0);
		var s1 = instance_find(oSaveSlot, 1);
		var s2 = instance_find(oSaveSlot, 2);
		if(!s0.has_save_data){
			draw_text(200, 150, "NEW GAME");
		} else {
			draw_text(300, 150, string(s0.current_room));
		}
		if(!s1.has_save_data){
			draw_text(200, 400, "NEW GAME");
		} else {
			draw_text(300, 400, string(s1.current_room));
		}
		if(!s2.has_save_data){
			draw_text(200, 650, "NEW GAME");
		} else {
			draw_text(300, 650, string(s2.current_room));
		}
		break;		
	case "dead":
		draw_set_font(fH1);
		draw_set_color(c_white);
		draw_text(180, 200, "YOU'RE DEAD");
		draw_set_font(fH2);
		draw_text(160, 350, "PRESS ANY BUTTON TO START OVER");
		break;
	default:
		if(!is_paused){
			var hp = oPlayer.hp;
			draw_set_font(fStats);
			draw_set_color(c_white);
			draw_text(10, 25, "ENERGY");
			if(oPlayer.energy_tanks > 0){
				for(var i=1; i<oPlayer.energy_tanks+1; i++){
					var emptiness = true;
					if(hp>100){
						emptiness = false;
						hp -= 100;
					}
					draw_rectangle(85+(i*15), 10, 95+(i*15), 20, emptiness);
				}
			}
			draw_text_color(100, 25, string(floor(hp)),c_black,c_black,c_black,c_black,1);

			if(oPlayer.has_missiles){
				draw_text(10, 45, "MISSILES");
				draw_text_color(100, 45, string(oPlayer.missiles),c_black, c_black,c_black,c_black,1);
			}

			draw_text(800, 25, "Debug info");
			draw_text(800, 45, "State: "+string(oPlayer.state));
			if(oPlayer.location == PLAYERLOCATION.HANGING){
				draw_text(800, 65, "Location: "+string(oPlayer.location));
			}
			draw_text(800, 85, "FPS: "+string(fps));
			draw_text(800, 105, "FPS Real: " +string(fps_real));
			//draw_text(800, 125, "player vsp: "+string(oPlayer.vsp));
			//draw_text(800, 145, "player grav: "+string(oPlayer.grv));
		} else {
			if(screen_state == SCREENSTATE.PAUSED){
				draw_set_font(fH1);
				draw_set_color(c_white);
				draw_text(300, 350, "PAUSED");
				draw_set_font(fH2);
				draw_set_color(c_white);
				if(pause_screen_selected == 0){
					draw_set_color(c_yellow);
				}
				draw_text(300, 450, "Continue");
				draw_set_color(c_white);
				if(pause_screen_selected == 1){
					draw_set_color(c_yellow);
				}
				draw_text(300, 500, "Options");
				draw_set_color(c_white);
				if(pause_screen_selected == 2){
					draw_set_color(c_yellow);
				}
				draw_text(300, 550, "Quit");
			} else if (screen_state == SCREENSTATE.OPTIONS){
				draw_set_colour(c_black);
				draw_rectangle(0, 0, room_width, room_height, false);
				draw_set_color(c_white);
				draw_set_font(fH1);
				draw_text(50, 50, "OPTIONS");
				draw_set_font(fH2);
				draw_set_color(c_white);
				if(option_screen_selected == 0){
					draw_set_color(c_yellow);
				}
				draw_text(50, 150, "Controls");
				draw_set_color(c_white);
				if(option_screen_selected == 1){
					draw_set_color(c_yellow);
				}
				draw_text(50, 200, "Music");
				draw_text(200, 200, string(music_gain));
				draw_set_color(c_white);
				if(option_screen_selected == 2){
					draw_set_color(c_yellow);
				}
				draw_text(50, 250, "SFX");
				draw_text(200, 250, string(sfx_gain));
				draw_set_color(c_white);
				if(option_screen_selected == 3){
					draw_set_color(c_yellow);
				}
				draw_text(50, 300, "Back");
			} else if (screen_state == SCREENSTATE.MODS){
				draw_set_colour(c_black);
				draw_rectangle(0, 0, room_width, room_height, false);
				draw_set_color(c_white);
				draw_set_font(fH1);
				draw_text(50, 50, "MODS");
				draw_sprite(sModSystem,0,120,170);
				var slot_index = 0;
				
				for(var i=0; i<PLAYERMODS.size; i++){
					var row = 0;
					if(i>=(PLAYERMODS.size/2)){
						row = 1;
					}
					
					var f = 0;
					if(ds_list_find_value(oController.player_mods_activated, i)){
						f = 2;
					}
					if(i == oController.mod_screen_selected){
						f = 1;
						if(ds_list_find_value(oController.player_mods_activated, i)){
							f = 3;
						}
					}
					//if(ds_list_size(oController.player_mods_activated)>3 && !ds_list_find_value(oController.player_mods_activated, i)){
					//	f =4;
					//}

					draw_sprite(sModItem,f,200+((i-((PLAYERMODS.size/2)*row))*80),400+(row*100));
					if(ds_list_find_value(oController.player_mods, i)){
						draw_sprite(sModItemPics,i,204+((i-((PLAYERMODS.size/2)*row))*80),404+(row*100));
						//if(ds_list_size(oController.player_mods_activated) >3  && !ds_list_find_value(oController.player_mods_activated, i)){
						//	draw_set_alpha(0.6);
						//	draw_rectangle(204+((i-((PLAYERMODS.size/2)*row))*80),404+(row*100),268+((i-((PLAYERMODS.size/2)*row))*80),468+(row*100),false);
						//	draw_set_alpha(1);
						//}
					}
					if(ds_list_find_value(oController.player_mods_activated, i)){
						draw_sprite(sModItemPics,i,180+(slot_index*200),235);
						slot_index++;
					}
				}
			} else if (screen_state == SCREENSTATE.MAP){
				draw_set_colour(c_black);
				draw_rectangle(0, 0, room_width, room_height, false);
				draw_set_color(c_white);
				draw_set_font(fH1);
				draw_text(50, 50, "MAP");
			} else if (screen_state == SCREENSTATE.INVENTORY){
				draw_set_colour(c_black);
				draw_rectangle(0, 0, room_width, room_height, false);
				draw_set_color(c_white);
				draw_set_font(fH1);
				draw_text(50, 50, "INVENTORY");
				draw_set_font(fH2);
				//draw_text(50, 150, json_encode(player_stats));
				//var k = ds_map_find_first(player_stats), 
				//   maptext = "";
				//while (!is_undefined(k)) {
				//  maptext += k + ": " + player_stats[? k] + "#";
				//  k = ds_map_find_next(player_stats, k);
				//}
				//draw_text(50, 150, maptext);
				//var upgrades = 0;
				//if(oPlayer.has_missiles){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Missiles");
				//}
				//if(oPlayer.has_bombs){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Bombs");
				//}
				//if(oPlayer.can_dash){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Dash");
				//}
				//if(oPlayer.can_double_jump){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Double Jump");
				//}
				//if(oPlayer.can_hook){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Hook");
				//}
				//if(oPlayer.has_bombs){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Screw Attack");
				//}
				//if(oPlayer.has_wave){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Wave Gun");
				//}
				//if(oPlayer.has_spread){
				//	upgrades++;
				//	draw_text(50, 100+(upgrades*50), "Spread Gun");
				//}
			}
		}
		break;
}