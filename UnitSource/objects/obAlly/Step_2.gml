if sprite_index=Jump {
   if vspeed<0 image_index=1 else image_index=0
}

if hp<=0 and Death[0]=0 and gravity=0 {
   Death[0]=1;
   scrPlayerDeath()
   sprite_index=Dead;
   image_index=0;
   friction=.15
   if obPlayer.Death[0] {
       Enable=0
       
       with obButtons destroy=1
       
       audio_stop_sound(audioMusic[1])
       audio_stop_sound(fxRound3)
       
       roundDefeat+=1
       
       //if roundDefeat=2 room_speed=20
       if !audio_is_playing(fxFantasy) and roundDefeat=2 audio_play_sound(fxFantasy, 1, 0)
       
        with obSun { image_blend=c_red match=0 }
       
        scrSaveData("Defeated", 1)
    }
}

if Death[0] { depth=-90 }

