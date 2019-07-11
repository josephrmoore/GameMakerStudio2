if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0] &&
   cardPower[Hero, 0]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-150, image_yscale)
   
   if Audio audio_play_sound(fxBat, 1, 0)
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] &&
   cardPower[Hero, 1]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[1]
   image_index=0;
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   if Audio audio_play_sound(fxBat, 1, 0)
   
} 

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   Attacking=1
   
   if Audio audio_play_sound(fxBat, 1, 0)
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 3] &&
   cardPower[Hero, 3]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   Attacking=1
   
   if Audio { audio_play_sound(fxBat, 2, 0) }
   if Audio audio_play_sound(fxBat, 1, 0)
   
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 4] &&
   cardPower[Hero, 4]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   Attacking=1
   if Audio { audio_play_sound(fxBat, 2, 0) }
   if Audio audio_play_sound(fxBat, 1, 0)
   if Audio audio_play_sound(fxBat, 1, 0)
   
}

   

