/// @description Insert description here
// You can write your code in this editor

// var max_hp = (oPlayer.energy_tanks*100) + 100;
var hp = oPlayer.hp;

draw_set_font(fStats);
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
draw_text(800, 65, "Location: "+string(oPlayer.location));
draw_text(800, 85, "FPS: "+string(fps));
draw_text(800, 105, "FPS Real: " +string(fps_real));