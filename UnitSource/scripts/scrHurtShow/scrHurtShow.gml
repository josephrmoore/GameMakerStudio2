if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
   if other.sprite_index=spArrow_03 && other.Hurt {
       
       hspeed=other.image_xscale*5;
       scrCase()
       ;
       
       
       audio_play_sound(fxHurt05, 1, 0)
    }
    
    if other.sprite_index=spArrow0_03 && other.Hurt {
       
       hspeed=other.image_xscale*10;
       ;
       
       scrCase()
       audio_play_sound(fxHurt05, 1, 0)
    }
    
    if other.sprite_index=spArrow1_03 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*15;
       ;
       
       
       scrCase()
       audio_play_sound(fxFireHit, 1, 0)
    }
    
    if other.sprite_index=spArrow2_03 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*7;
       ;
       
       
       scrCase()
       showbowAttack[2]=1
       showbowAttack[3]=room_speed*2
       audio_play_sound(fxHurt02, 1, 0)
    }
     scrHurting();
}

