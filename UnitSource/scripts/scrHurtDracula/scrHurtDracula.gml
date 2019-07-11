if (other.type=argument0 or other.type=2) and Death[0]=0 {
   healthScale=2;
   
    if other.sprite_index=spBats_08 && other.Hurt {
       
       sprite_index=Hrt[0]
       
       hspeed=other.image_xscale*2;
       scrCase()
       
       
       audio_play_sound(fxHurt03, 1, 0)
    }
     scrHurting()
}

