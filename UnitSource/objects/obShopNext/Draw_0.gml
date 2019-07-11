draw_self();

draw_set_font(foQuest);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(menuColor);

draw_set_alpha(1)
draw_set_alpha(obClose.image_alpha)

if type draw_text(x, y, string_hash_to_newline("Next")) else draw_text(x, y, string_hash_to_newline("Back"))

if type=0 
{
    if shopCount=0 draw_text(room_width/2, y, string_hash_to_newline("Weapon *Not available* "))
    if shopCount=1 draw_text(room_width/2, y, string_hash_to_newline("Armor *Not available* "))
    if shopCount=2 draw_text(room_width/2, y, string_hash_to_newline("Speical *Not available* "))
}

draw_set_alpha(1)

