count+=0.25

draw_set_alpha(1)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(foCustom);
draw_set_color(c_black)
draw_set_alpha(obClose.image_alpha)
image_alpha=obClose.image_alpha

count+=0.15

draw_sprite_ext(cardMain[Champion], count, room_width/2-100, room_height/2+50-150, 1, 1, 0, c_white, image_alpha)

draw_sprite(spCardBack, 3, room_width/2+100, room_height/2+50-100)
draw_text(room_width/2+100, room_height/2+50-100, string_hash_to_newline(string(stickName[Champion])))

draw_sprite(spCardBack, cardEmpire[Champion], room_width/2+100, room_height/2+50-150)
draw_text(room_width/2+100, room_height/2+50-150, string_hash_to_newline(string(creatureKind[Champion, 0])))

draw_sprite(spCardBack, 3, room_width/2+100, room_height/2+50-200)
draw_text(room_width/2+100, room_height/2+50-200, string_hash_to_newline(string(Healthy[Champion, 0])))

draw_set_color(c_black)
/*
for (i=0; i<shardLimit[Champion]; i+=1)
{
  draw_sprite_ext(bodyType[Champion], i, x-200+160*i, y+80, 1, 1, 0, c_white, image_alpha)
  draw_text(x-200+160*i, y+80+80, bodyParts[Champion, i])
}
*/
draw_set_alpha(1)

/* */
/*  */
