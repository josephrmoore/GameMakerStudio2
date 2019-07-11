if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
    if other.sprite_index=spAttack00_05 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*5;
       scrCase()
       
       audio_play_sound(fxHurt00, 1, 0)
    }
    
    if other.sprite_index=spAttack01_05 && other.Hurt {
       
       scrCase()
       
       audio_play_sound(fxHurt01, 1, 0)
    }
    
    if other.sprite_index=spKnife_05 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*2*10;
       
       audio_play_sound(fxHurt06, 1, 0)
       scrCase()
       ;
       
    }
    
    if other.sprite_index=spAttack02_05 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*25*-1;
       vspeed-=25
       
       audio_play_sound(fxHurt04, 1, 0)
       
       scrCase()
       ;
       
    }
    
    if other.sprite_index=spAttack04_05 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*5;
       
       audio_play_sound(fxHurt00, 1, 0)
       scrCase()
       ;
       
    }
     scrHurting();
}

