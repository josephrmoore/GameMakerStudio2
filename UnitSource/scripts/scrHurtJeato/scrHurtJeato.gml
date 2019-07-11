if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
    if other.sprite_index=spAttack01_10 && other.Hurt {
       
       sprite_index=Hrt[0]
       
       hspeed=other.image_xscale*15;
       scrCase()
       
       audio_play_sound(fxHurt00, 1, 0)
       
    }
    if other.sprite_index=spAttack00_10 && other.Hurt {
       
       sprite_index=Hrt[0]
       
       hspeed=other.image_xscale*3;
       scrCase()
       
       audio_play_sound(fxHurt00, 1, 0)
       
    }
     scrHurting()
}
