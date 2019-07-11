draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_font(foMessage);

draw_set_alpha(1)
draw_set_alpha(image_alpha)
if Type=0 {

    draw_text(room_width/2, room_height/2-35, string_hash_to_newline(@"
    soundimage.org
    GUI, Art, FX and Music: Opengameart.org
    FX and Voice: Freesound.org
    Animation: PivotAnimator
    Art: GlitchTheGame
    
    Music by Kevin MacLeod (incompetech.com)
    Licensed under Creative Commons: By Attribution 3.0 License
    http://creativecommons.org/licenses/by/3.0
    
    Developer: Bukmand"))
    
}
if Type=5 {
   draw_set_halign(fa_left)
   
   draw_text(100, room_height/2-250, string_hash_to_newline("Total matches: " + string(totalMatch)))
   draw_text(100, room_height/2-200, string_hash_to_newline("Wins: " + string(Wins)))
   draw_text(100, room_height/2-150, string_hash_to_newline("Loss: " + string(Loss)))
    
}
//Music: Alexander Ehlers / James Opie
if Type=4 {
   draw_text(room_width/2, room_height/2-250, string_hash_to_newline("Stick Lab"))
   image_xscale=2.8;
}
if Type=3 {
   draw_set_color(c_black)
   for (i=0; i<3; i+=1)
    {
        //draw_line(x-80, 135+i, x+80, 135+i)
    }
    
    image_xscale=2.8;
    
    draw_set_halign(fa_left)
    draw_set_color(c_black)
    
    if next=0 {
        for (i=0; i<maxRead; i+=1) {
    
            draw_set_color(c_black)
            if Achievement[0, i] { draw_set_color(c_red) }
            
            draw_set_halign(fa_right)
            draw_text(room_width/2+370, 35+room_height/2-200+40*i, string_hash_to_newline(ds_list_find_value(questReward, i)))
            draw_set_halign(fa_left)
            draw_set_color(c_black)
            if Achievement[0, i] { draw_set_color(c_red) }
            draw_text(room_width/2-400, 35+room_height/2-200+40*i, string_hash_to_newline(""+string(ds_list_find_value(questSpec, i))))
            draw_sprite_ext(spRubyIcon, 0, room_width/2+400, 35+room_height/2-175+40*i, 0.5, 0.5, 1, c_white, image_alpha)
            
            if Achievement[0, i] {
                   draw_set_color(c_red)
                   draw_line(room_width/2-400, 35+room_height/2-195+40*i, room_width/2-400+string_width(string_hash_to_newline(ds_list_find_value(questSpec, i))), 35+room_height/2-195+40*i)
               }
        }
    }
    if next=1 {
        for (i=12; i<maxRead; i+=1) {
    
            draw_set_color(c_black)
            if Achievement[0, i] { draw_set_color(c_red) }
            draw_set_halign(fa_right)
            draw_text(room_width/2+370, 35+room_height/2-200+40*i-40*12, string_hash_to_newline(ds_list_find_value(questReward, i)))
            draw_set_halign(fa_left)
            draw_set_color(c_black)
            if Achievement[0, i] { draw_set_color(c_red) }
            draw_text(room_width/2-400, 35+room_height/2-200+40*i-40*12, string_hash_to_newline(""+string(ds_list_find_value(questSpec, i))))
            draw_sprite_ext(spRubyIcon, 0, room_width/2+400, 35+room_height/2-175+40*i-40*12, 0.5, 0.5, 1, c_white, image_alpha)
            
            if Achievement[0, i] {
                   draw_set_color(c_red)
                   draw_line(room_width/2-400, 35+room_height/2-195+40*i-40*12, room_width/2-400+string_width(string_hash_to_newline(ds_list_find_value(questSpec, i))), 35+room_height/2-195+40*i-40*12)
               }
        }
    }
    if next=2 {
        for (i=24; i<maxRead; i+=1) {
    
            draw_set_color(c_black)
            if Achievement[0, i] { draw_set_color(c_red) }
            draw_set_halign(fa_right)
            
            draw_text(room_width/2+370, 35+room_height/2-200+40*i-40*24, string_hash_to_newline(ds_list_find_value(questReward, i)))
            draw_set_halign(fa_left)
            draw_set_color(c_black)
            if Achievement[0, i] { draw_set_color(c_red) }
            draw_text(room_width/2-400, 35+room_height/2-200+40*i-40*24, string_hash_to_newline(""+string(ds_list_find_value(questSpec, i))))
            draw_sprite_ext(spRubyIcon, 0, room_width/2+400, 35+room_height/2-175+40*i-40*24, 0.5, 0.5, 1, c_white, image_alpha)
            
            if Achievement[0, i] {
                   draw_set_color(c_red)
                   draw_line(room_width/2-400, 35+room_height/2-195+40*i-40*24, room_width/2-400+string_width(string_hash_to_newline(ds_list_find_value(questSpec, i))), 35+room_height/2-195+40*i-40*24)
               }
        }
    }

   draw_set_halign(fa_center);
   draw_set_color(c_red);
   draw_text(room_width/2, room_height/2-250, string_hash_to_newline("Achievements"))
   
}

draw_set_alpha(1)

