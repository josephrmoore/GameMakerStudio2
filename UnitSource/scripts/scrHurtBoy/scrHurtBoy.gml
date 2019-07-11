if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
    if other.sprite_index=spAttack01_07 && other.Hurt and other.image_index>=2 {
       
       sprite_index=Hrt[0]
       
       hspeed=other.image_xscale*2;
       scrCase()
       
       
       audio_play_sound(fxHurt01, 1, 0)
    }
    
    if other.sprite_index=spApple_07 && other.Hurt {
       
       sprite_index=Hrt[0]
       
       hspeed=other.image_xscale*3;
       scrCase()
       
       
       audio_play_sound(fxHurt06, 1, 0)
    }
    
     scrHurting()
}

