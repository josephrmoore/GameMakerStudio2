display_set_gui_size(1280, 720)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(foLogo);
draw_set_color(c_aqua)

if !remove draw_sprite_stretched(spBlack, 0, 0, 0, 10000, 1000)

draw_self()

draw_text_colour(1280/2, 720/2, string_hash_to_newline("Prepare"), c_dkgray, c_dkgray, c_dkgray, c_dkgray, image_alpha)

