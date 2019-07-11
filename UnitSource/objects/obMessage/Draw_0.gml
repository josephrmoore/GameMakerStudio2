draw_set_font(foQuest)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_alpha(1)
draw_set_alpha(image_alpha)

draw_sprite_ext(spPaperBack, 0, x, y, 1, 0.5, 0, c_white, image_alpha)
draw_text(x, y, string_hash_to_newline(type))

draw_set_alpha(1)

