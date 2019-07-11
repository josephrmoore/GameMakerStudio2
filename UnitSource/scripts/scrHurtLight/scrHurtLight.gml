if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
   if other.sprite_index=spAttackBeam_04 && other.Hurt {
       
       hspeed=other.image_xscale*5
       scrCase()
       ;
       
       audio_play_sound(fxHurt01, 1, 0)
    }
    
    if other.sprite_index=spAttackBeam1_04 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*20;
       ;
       
       
       scrCase()
       audio_play_sound(fxHurt05, 1, 0)
    }
    
    if other.sprite_index=spAttackDemon_04 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*10;
       ;
       scrCase()
       
       
       
       audio_play_sound(fxHurt00, 1, 0)
    }
    
    if other.sprite_index=spWing_04 && other.Hurt {
       
       
       
       hspeed=other.image_xscale*30*-1;
       ;
       
       audio_play_sound(fxHurt03, 1, 0)
       scrCase()
    }
     scrHurting();
}

