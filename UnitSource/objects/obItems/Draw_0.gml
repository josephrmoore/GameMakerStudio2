draw_self()
draw_set_font(foCustom);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(1)
draw_set_alpha(image_alpha)

if mode=0 and distance_to_point(mouse_x, mouse_y)=0
{
   draw_text(80, room_height/2+120, string_hash_to_newline("Detail - "+string(weaponDetail[1, type])))
   draw_text(80, room_height/2+150, string_hash_to_newline("Quantity - "+string(weaponDetail[0, type])))
   draw_text(80, room_height/2+180, string_hash_to_newline("Cost - "+string(weaponDetail[2, type])))
}
draw_set_halign(fa_center)
if mode=0 draw_text(room_width/2, room_height/2+170, string_hash_to_newline("Hold to buy"))

draw_set_alpha(1)

