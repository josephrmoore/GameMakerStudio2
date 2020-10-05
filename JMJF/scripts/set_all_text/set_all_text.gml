/// @function set_all_text(color, font, halign, valign)
/// @description Set all the parameters for displaying text at once
/// @param color set text color
/// @param font set font type
/// @param halign set horizontal alignment
/// @param valign set vertical alignment

function set_all_text(argument0, argument1, argument2, argument3){
	draw_set_color(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);
}