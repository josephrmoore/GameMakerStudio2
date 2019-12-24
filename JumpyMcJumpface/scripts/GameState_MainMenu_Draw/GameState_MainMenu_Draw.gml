draw_set_color(c_white);
draw_set_font(f1);
draw_text(320, 150, "Jumpy");
draw_text(120, 240, "McJumpFace");

draw_set_font(f3);
if(main_menu_pos == 0){
	draw_set_color(c_yellow);
}
draw_text(440, 400, "START");
draw_set_color(c_white);


if(main_menu_pos == 1){
	draw_set_color(c_yellow);
}
if(oGame.last_level_finished>0){
	draw_text(400, 450, "CONTINUE");
}
draw_set_color(c_white);