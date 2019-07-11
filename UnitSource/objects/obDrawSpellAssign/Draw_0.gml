if Destroy=0 {
    if xTrash<=0.25 xTrash+=0.03;
    if yTrash<=0.15 yTrash+=0.03;
} else {
  image_alpha-=0.1
}

if xTrash>=0.25 and Destroy=0 { Destroy=1 alarm[0]=100 }

if !instance_exists(obOverview)
   draw_sprite_ext(spPaperBack, 0, room_width/2, room_height/2-70, xTrash+.35, yTrash+0.15, 0, c_white, image_alpha);

draw_set_font(foLogo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

if image_alpha<=0 instance_destroy()

if xTrash<=0 instance_destroy();

draw_set_alpha(1)
draw_set_alpha(image_alpha)
if Type=5 draw_text_transformed(room_width/2, room_height/2-70, string_hash_to_newline("Character not owned"),
    xTrash+0.045, yTrash+0.2, 0.00);
if Type=4 and cardOwned[Champion]!=1 draw_text_transformed(room_width/2, room_height/2-70, string_hash_to_newline("select "+string(cardOwned[Champion])+" abilities"),
    xTrash+0.05, yTrash+0.2, 0.00);
if Type=4 and cardOwned[Champion]=1 draw_text_transformed(room_width/2, room_height/2-70, string_hash_to_newline("select "+string(cardOwned[Champion])+" ability"),
    xTrash+0.05, yTrash+0.2, 0.00);
    
if instance_exists(obBlack) instance_destroy();
draw_set_alpha(1)


