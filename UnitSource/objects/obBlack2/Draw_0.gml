draw_self()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(foLogo);
draw_set_color(c_white)

if roundVictory!=2 and roundDefeat!=2
   draw_text_colour(__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 ), __view_get( e__VW.HView, 0 )/2+__view_get( e__VW.YView, 0 ), string_hash_to_newline("Battle "+string(Round+1)+""), c_dkgray, c_dkgray, c_dkgray, c_dkgray, imagealpha)

