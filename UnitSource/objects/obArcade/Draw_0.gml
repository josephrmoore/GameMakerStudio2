draw_set_alpha(1)
draw_set_alpha(image_alpha)

if instance_exists(obClose) image_alpha=obClose.image_alpha else image_alpha=1

draw_self();

draw_set_font(fonMenu);
draw_set_color(menuColor);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if !champOwned[Champion] and instance_exists(obBackSpells)
   draw_text(x, y, string_hash_to_newline(string(champCost[Champion])+"#Buy"))
   else draw_text(x, y, string_hash_to_newline("Endless#mode"))
draw_set_alpha(1)

