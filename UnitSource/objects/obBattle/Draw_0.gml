draw_set_font(foBattle)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_color(c_dkgray)

draw_set_alpha(1)
draw_set_alpha(image_alpha)

if !alpha draw_text_transformed(x, y, string_hash_to_newline("Get set"), xx, yy, 0) else
   draw_text_transformed(x, y, string_hash_to_newline("Go"), xx, yy, 0)
   
draw_set_alpha(1)

