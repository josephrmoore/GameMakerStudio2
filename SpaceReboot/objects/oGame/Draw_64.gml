/// @description Insert description here
// You can write your code in this editor

switch(current_room){
	case "title":
		if(!intro_animation_on){
			draw_sprite(sTitleSpace,0,0,0);
			if(gamepad_plugged_in){
				draw_sprite(sTitleButton,0,0,0);
			} else {
				draw_sprite(sTitleKey,0,0,0);
			} 
		}
	break;
	case "init":
		break;
	case "data":
		//draw_set_color(c_white);
		//draw_set_font(fH2);
		//var s0 = instance_find(oSaveSlot, 0);
		//var s1 = instance_find(oSaveSlot, 1);
		//var s2 = instance_find(oSaveSlot, 2);
		//if(!s0.has_save_data){
		//	draw_text(200, 150, "NEW GAME");
		//} else {
		//	draw_text(300, 150, string(s0.current_room));
		//}
		//if(!s1.has_save_data){
		//	draw_text(200, 400, "NEW GAME");
		//} else {
		//	draw_text(300, 400, string(s1.current_room));
		//}
		//if(!s2.has_save_data){
		//	draw_text(200, 650, "NEW GAME");
		//} else {
		//	draw_text(300, 650, string(s2.current_room));
		//}
		if(delete_screen_up){
			if(delete_screen_state == 1){
				draw_sprite(sDataDeleteYes, 0, 0, 0);
			} else {
				draw_sprite(sDataDeleteNo, 0, 0, 0);
			}
		} else {
			if(gamepad_plugged_in){
				draw_sprite(sDataButton, 0, 0, 0);
			} else {
				draw_sprite(sDataKey, 0, 0, 0);
			}
		}
		break;		
	case "dead":
		//draw_set_font(fH1);
		//draw_set_color(c_white);
		//draw_text(180, 200, "YOU'RE DEAD");
		//draw_set_font(fH2);
		draw_sprite(sDeadText, 0, 0, 0);
		if(gamepad_plugged_in){
			draw_sprite(sDeadButton,0,0,0);
			//draw_text(160, 350, "PRESS ANY BUTTON TO START OVER");
		} else {
			draw_sprite(sDeadKey,0,0,0);
			//draw_text(160, 350, "PRESS ANY KEY TO START OVER");
		}
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
				draw_text(300, 450, "CONTINUE");
				draw_set_color(c_white);
				if(pause_screen_selected == 1){
					draw_set_color(c_yellow);
				}
				draw_text(300, 500, "OPTIONS");
				draw_set_color(c_white);
				if(pause_screen_selected == 2){
					draw_set_color(c_yellow);
				}
				draw_text(300, 550, "QUIT");
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
				//draw_text(50, 150, "Controls");
				//draw_set_color(c_white);
				//if(option_screen_selected == 1){
				//	draw_set_color(c_yellow);
				//}
				draw_text(50, 200, "Music");
				draw_text(200, 200, string(music_gain));
				draw_set_color(c_white);
				if(option_screen_selected == 1){
					draw_set_color(c_yellow);
				}
				draw_text(50, 250, "SFX");
				draw_text(200, 250, string(sfx_gain));
				draw_set_color(c_white);
				//if(option_screen_selected == 3){
				//	draw_set_color(c_yellow);
				//}
				//draw_text(50, 300, "Back");
				//if(controls_screen){
					// show controls / allow mapping
					if(gamepad_plugged_in){
						draw_sprite(sGamepad, 0, 0, 280);
						draw_sprite(sOptionsButton, 0, 0, 0);
					} else {
						draw_sprite(sKeyboard, 0, 0, 200);
						draw_sprite(sOptionsKey, 0, 0, 0);
					}

				//}
				
			} else if (screen_state == SCREENSTATE.MODS){
				draw_set_colour(c_black);
				draw_rectangle(0, 0, room_width, room_height, false);
				draw_set_color(c_white);
				draw_set_font(fStats);
				draw_text(20, 10, "ENERGY");
				var last_tank = 0;
				var hp = oPlayer.hp;
				if(oPlayer.energy_tanks > 0){
					for(var i=1; i<oPlayer.energy_tanks+1; i++){
						var emptiness = true;
						if(hp>100){
							emptiness = false;
							hp -= 100;
						}
						draw_rectangle(85+(i*15), 10, 95+(i*15), 20, emptiness);
						last_tank = 85+(i*15);
					}
				}
				
				draw_text(last_tank+20, 10, string(string(oPlayer.hp) + "/" + string(((oPlayer.energy_tanks*100)+100))));
				if(oPlayer.has_missiles){
					draw_text(800, 20, "MISSILES");
					draw_text(900, 20, string((string(oPlayer.missiles) + "/" + string(oPlayer.max_missiles))));
				}
				draw_set_font(fH2);
				draw_text(400, 50, "UPGRADES");
				
				for(var i=0; i<ds_list_size(player_upgrades)-1; i++){
					if(ds_list_find_value(player_upgrades, i)){
						draw_sprite(sUpgradeItem,0,120+(i*80),100);
						draw_sprite(sUpgradeItemPics,i,120+(i*80),100);
					}
				}
				var active_mod = false;
				if(oPlayer.has_mod_system){
					draw_text(430, 200, "MODS");
					draw_sprite(sModSystem,0,120,270);
					var slot_index = 0;
				
					for(var i=0; i<PLAYERMODS.size; i++){
						var row = 0;
						if(i>=(PLAYERMODS.size/2)){
							row = 1;
						}
					
						var f = 0;
						if(ds_list_find_value(player_mods_activated, i)){
							f = 2;
						}
						if(i == oController.mod_screen_selected){
							f = 1;
							active_mod = false;
							if(ds_list_find_value(oController.player_mods_activated, i)){
								f = 3;
								active_mod = true;
							}
						}
						//if(ds_list_size(oController.player_mods_activated)>3 && !ds_list_find_value(oController.player_mods_activated, i)){
						//	f =4;
						//}

						draw_sprite(sModItem,f,200+((i-((PLAYERMODS.size/2)*row))*80),500+(row*100));
						if(ds_list_find_value(oController.player_mods, i)){
							draw_sprite(sModItemPics,i,204+((i-((PLAYERMODS.size/2)*row))*80),504+(row*100));
							//if(ds_list_size(oController.player_mods_activated) >3  && !ds_list_find_value(oController.player_mods_activated, i)){
							//	draw_set_alpha(0.6);
							//	draw_rectangle(204+((i-((PLAYERMODS.size/2)*row))*80),404+(row*100),268+((i-((PLAYERMODS.size/2)*row))*80),468+(row*100),false);
							//	draw_set_alpha(1);
							//}
						}
						if(ds_list_find_value(player_mods_activated, i)){
							draw_sprite(sModItemPics,i,180+(slot_index*200),335);
							slot_index++;
						}
					}
					if(active_mod){
						if(gamepad_plugged_in){
							draw_sprite(sModsDeactButton, 0, 0, 0);
						} else {
							draw_sprite(sModsDeactKey, 0, 0, 0);
						}
					} else {
						if(oController.gamepad_plugged_in){
							draw_sprite(sModsActButton, 0, 0, 0);
						} else {
							draw_sprite(sModsActKey, 0, 0, 0);
						}
					}
				}
			} else if (screen_state == SCREENSTATE.MAP){
				draw_set_colour(c_black);
				draw_rectangle(0, 0, room_width, room_height, false);
				draw_set_color(c_white);
				draw_set_font(fH1);
				draw_text(50, 50, "MAP");
				// use global map vars to draw only parts visited
				for(var i=0; i<136; i++){
					for(var j=0; j<69; j++){
						if(ds_grid_get(global.map_visited_grid, j, i)){
							draw_sprite_part(sWorldMap,0,j*15,i*13,15,13,j*15,(i*13)+map_y_offset);
							
						}
						if(j == current_x_tile && i == current_y_tile){
							draw_set_color(c_yellow);
							draw_rectangle(j*15, (i*13)+map_y_offset,(j*15)+15,((i*13)+13)+map_y_offset, true);
						}
					}
				}
				if(gamepad_plugged_in){
					draw_sprite(sMapButton, 0, 0, 0);
				} else {
					draw_sprite(sMapKey, 0, 0, 0);
				}
			}
		}
		break;
}