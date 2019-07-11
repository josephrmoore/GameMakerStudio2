if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
     
   if other.sprite_index=spAttack00_02 && other.Hurt {
       
       
       hspeed=other.image_xscale*5;
       scrCase()
       ;
       
       
       audio_play_sound(fxHurt01, 1, 0)
    }
    
    if other.sprite_index=spAttack03_02 && other.Hurt {
       
       hspeed=other.image_xscale*30;
       ;
       
       scrCase()
       audio_play_sound(fxHurt00, 1, 0)
    }
    
    if other.sprite_index=spDog01_02 && other.Hurt {

       hspeed=other.image_xscale*3;
       ;
       
       scrCase()
       audio_play_sound(fxHurt00, 1, 0)
    }
     scrHurting();
}

