draw_self();

draw_set_font(fonMenu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(menuColor);

//draw_sprite_ext(spInfo, 0, x, y, tscale, tscale, 0, c_white, 1);
if Music draw_text(x, y, string_hash_to_newline("MusicOn")) else draw_text(x, y, string_hash_to_newline("MusicOff"))

