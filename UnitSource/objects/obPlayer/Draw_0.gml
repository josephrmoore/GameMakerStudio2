with (other) {
if Hero=3 {
   if !Attacking draw_sprite_ext(spBow_03, 0, x, y-sprite_height/1.5, 0.7, 0.7, 15, image_blend, 1)
   draw_sprite_ext(spArrowpack_03, 0, x, y-sprite_height/1.5, 0.7, 0.7, 15, c_black, 1)
}

draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_middle);
draw_set_font(foHealth);

//if ceil(matchDuring/60)<10 Health-=Healthy[Champion, playerType]*0.002

if Health<hp hp-=maxHP*0.01

if Health>hp hp+=maxHP*0.01

draw_set_color(c_black)

draw_healthbar(__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 )-400, 15+__view_get( e__VW.YView, 0 )+20, __view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 )+400, 
15+__view_get( e__VW.YView, 0 )+60, (ceil(hp)/ceil(maxHP))*100, c_white, c_ltgray, c_red, 0, true, true)
draw_set_color(colorBlend[Hero])
draw_set_font(foHealth);
draw_set_color(c_black)
if hp>0 and !Death[0] draw_text(__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 ), 30+__view_get( e__VW.YView, 0 )+25, string_hash_to_newline(string(ceil(hp))))
draw_set_halign(fa_center)

draw_sprite_ext(spCardBack, 3, __view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 ), 30+__view_get( e__VW.YView, 0 )+20+45+10, 1, 1, 0, c_white, image_alpha)
draw_text(__view_get( e__VW.WView, 0 )/2+__view_get( e__VW.XView, 0 ), 30+__view_get( e__VW.YView, 0 )+20+45+10, string_hash_to_newline("Battle "+string(Round+1)))

draw_set_font(foLogo)

}
