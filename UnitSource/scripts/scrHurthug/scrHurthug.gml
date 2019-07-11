if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
    if other.sprite_index=spAttack00_00 && other.Hurt {
       
       hspeed=other.image_xscale*15*-1;
       scrCase()
       ;
       
       audio_play_sound(fxHurt00, 1, 0)
    }
    
    if other.sprite_index=spAttack01_00 && other.Hurt {
       
       hspeed=other.image_xscale*20;
       scrCase()
       ;
       
       audio_play_sound(fxHurt01, 1, 0)
    }
    
    if other.sprite_index=spAttack03_00 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*2*30;
       
       audio_play_sound(fxHurt04, 1, 0)
       scrCase()
       ;
    }
     scrHurting()
}

