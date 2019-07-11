draw_self();

draw_set_font(fonMenu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(menuColor);

draw_set_alpha(1)
draw_set_alpha(obClose.image_alpha)
draw_text(x, y, string_hash_to_newline("Next"))
draw_set_alpha(1)

