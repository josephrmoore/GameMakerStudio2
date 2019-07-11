draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white)
draw_set_font(foCustom)

scrShadow()

if room=roMenu {
    
        if Burn>0 {
            fakeBurn+=1
            if Burn>0 Burn-=Level*1.75 else Burn=0
        }
    
    if fakeBurn>=100 {
    
        audio_play_sound(fxLevelup, 1, 0)
        
        Level++
        fakeBurn-=100
        
        achievement_post_score("CgkI-tLJkpQeEAIQAg", Level)
        
        scrSaveData("fakeBurn", fakeBurn)
        scrSaveData("Level", Level)
    }
    
    
    draw_healthbar(room_width-20-200, 15+25, room_width-50-20, 40+25, (fakeBurn),
    c_orange, c_ltgray, c_teal, 0, true, true)
    
    draw_set_halign(fa_left);
    draw_set_color(c_white)
    draw_set_halign(fa_middle);
    draw_set_color(c_white)
    draw_text(room_width-170-20, (40+15)/2+25, string_hash_to_newline("Rank"))
    
    draw_set_halign(fa_right)
    draw_text(room_width-55-20, (40+15)/2+25, string_hash_to_newline(Level))
    
    draw_set_halign(fa_middle)
    draw_set_font(foTimer)
    //draw_text(room_width-140, (40+15)/2+25, string(maxXP))
    draw_set_font(foCustom)
    
    draw_set_color(c_black)
    draw_set_halign(fa_right);
    draw_text(room_width-280+15, (40+15)/2+25, string_hash_to_newline(ceil(Ruby)))
    draw_sprite_ext(spRubyIcon, 0, room_width-250, (40+15)/2+25, 0.3, 0.3, 0, c_white, 1)
    
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    
    //draw_text(300+20, (40+15)/2+25, string(Cookie))
    //draw_sprite_ext(spCookie, 0, 300, (40+15)/2+25, 0.3, 0.3, 0, c_white, 1)

    draw_set_color(c_white)
    draw_set_halign(fa_left);
    //draw_text(100+17.5, (40+15)/2+25, creatureChest)
    draw_set_halign(fa_left);
    //draw_sprite_ext(spPortal, 0, 100, (40+15)/2+25, 0.15, 0.15, 0, c_white, 1)

    
}

