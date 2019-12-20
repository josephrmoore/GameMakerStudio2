draw_set_color(c_white);
draw_set_font(f1);
draw_text(200, 150, "Jumpy McJumpFace");

if(main_menu_pos == 0){
	draw_set_color(c_yellow);
}
draw_text(200, 350, "START");
draw_set_color(c_white);


if(main_menu_pos == 1){
	draw_set_color(c_yellow);
}
if(oGame.last_level_finished>0){
	draw_text(200, 550, "CONTINUE");
}
draw_set_color(c_white);