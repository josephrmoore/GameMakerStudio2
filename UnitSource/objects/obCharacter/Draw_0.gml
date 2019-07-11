draw_set_font(foCustom)
draw_set_alpha(1)
draw_set_alpha(obClose.image_alpha)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
/*
if champOwned[Type] draw_text(x, y-sprite_height/2-30, "Playable")
else draw_text(x, y-sprite_height/2-30, "Not-playable")
draw_sprite(sprite_index, 0, x, y)
*/
if Type=2 draw_text(x, 70, string_hash_to_newline("Select your character"))

draw_set_alpha(1)

/* */
/*  */
