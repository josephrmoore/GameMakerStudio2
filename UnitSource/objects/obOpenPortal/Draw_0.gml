draw_self()
draw_set_font(foCustom);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(1)
draw_set_alpha(image_alpha)
draw_text(x-55, y, string_hash_to_newline("buy"))
draw_sprite_ext(spCookie, 0, x-10, y, .3, .3, 0, image_blend, image_alpha)
draw_text(x+45, y, string_hash_to_newline("700"))
draw_set_alpha(1)

