draw_set_color(argument[0]);
draw_set_font(argument[1]);

if(argument_count == 3){
	draw_set_halign(argument[2]);
} else {
	draw_set_halign(fa_center);
}
if(argument_count == 4){
	draw_set_valign(argument[3]);
} else {
	draw_set_valign(fa_top);
}