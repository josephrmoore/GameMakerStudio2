if Hero=3 {
   if !Attacking draw_sprite_ext(spBow_03, 0, x, y-sprite_height/1.5, 0.7, 0.7, 15, image_blend, 1)
   draw_sprite_ext(spArrowpack_03, 0, x, y-sprite_height/1.5, 0.7, 0.7, 15, c_black, 1)
}

draw_self();

draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_font(foHealth);

//if ceil(matchDuring/60)<10 Health-=Healthy[Hero, playerType]*0.002

if Health<hp hp-=maxHP*0.05
if Health>hp hp+=maxHP*0.05

draw_set_color(c_black)

if draw_healthbar(x-100, y-sprite_height-30, x+100, 
y-sprite_height-60, (ceil(hp)/ceil(maxHP))*100, c_white, c_ltgray, c_red, 1, true, true)
draw_set_font(foCustom)
draw_set_color(c_black)
if hp>0 and !Death[0] draw_text(x, y-sprite_height-45, string_hash_to_newline(ceil(hp)))

//if Death[0] draw_sprite(spBadge, 0, x, y)

