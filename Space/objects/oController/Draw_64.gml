/// @description Insert description here
// You can write your code in this editor

switch(current_room){
	case "title":
		draw_set_font(fH1);
		draw_set_color(c_white)
		draw_text(180, 200, "SPACE");
		draw_set_font(fH2);
		draw_text(160, 350, "PRESS ANY BUTTON TO BEGIN");
	break;
	case "init":
		break;
	case "dead":
		draw_set_font(fH1);
		draw_set_color(c_white);
		draw_text(180, 200, "YOU'RE DEAD");
		draw_set_font(fH2);
		draw_text(160, 350, "PRESS ANY BUTTON TO START OVER");
		break;
	default:
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
		draw_text(800, 125, "player vsp: "+string(oPlayer.vsp));
		draw_text(800, 145, "player grav: "+string(oPlayer.grv));
	break;
}