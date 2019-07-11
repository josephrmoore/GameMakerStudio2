if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
   if other.sprite_index=spAttack00_01 && other.Hurt {
       
       hspeed=other.image_xscale*40;
       scrCase()
       
       
    }

    if other.sprite_index=spAttack02_01 && other.Hurt {
       scrCase()
       hspeed=other.image_xscale*30
       
       audio_play_sound(fxHurt00, 1, 0)
       
    }
    
    if other.sprite_index=spAttack03_01 && other.Hurt {
       
       
       hspeed=other.image_xscale*5;
       
       
       scrCase()
       audio_play_sound(fxHurt02, 1, 0)
    }
    
    if other.sprite_index=spAttack04_01 && other.Hurt {
       
       hspeed=other.image_xscale*40;
       
       audio_play_sound(fxHurt06, 1, 0)
       scrCase()
       
       
    }
     scrHurting();
}

