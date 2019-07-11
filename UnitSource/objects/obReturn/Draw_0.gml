draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(foMenu)
draw_set_color(c_white)

draw_set_alpha(1)
draw_set_alpha(image_alpha)

if instance_exists(selfiD) and Multiplayer=0
{
   if ( selfiD.Hero=0 ) and type = 0 draw_text(x, y, string_hash_to_newline(selfiD.shieldCount))
   if ( selfiD.Hero=0 ) and type = 0 and selfiD.shieldCount<=0 destroy=1
   
   if ( selfiD.Hero=9 ) and type = 0 draw_text(x, y, string_hash_to_newline(selfiD.shieldCount))
   if ( selfiD.Hero=9 ) and type = 0 and selfiD.shieldCount<=0 destroy=1
   
   if ( selfiD.Hero=2 ) and type = 0 draw_text(x, y, string_hash_to_newline(selfiD.shieldCount))
   if ( selfiD.Hero=2 ) and type = 0 and selfiD.shieldCount<=0 destroy=1
   
   if ( selfiD.Hero=2 ) and type = 2 draw_text(x, y, string_hash_to_newline(selfiD.attackSword))
   if ( selfiD.Hero=2 ) and type = 2 and selfiD.attackSword<=0 destroy=1
   
   if ( selfiD.Hero=3 ) and type = 1 draw_text(x, y, string_hash_to_newline(selfiD.try))
   if ( selfiD.Hero=3 ) and type = 1 and selfiD.try<=0 destroy=1
}

draw_set_alpha(1)

