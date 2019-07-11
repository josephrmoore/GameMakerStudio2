if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0] &&
   cardPower[Hero, 0]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   scrDamage(painType, 1, spApple_07, c_white, image_xscale, x+10*image_xscale, y-35, image_yscale)
   
   if Audio audio_play_sound(fxSwing, 1, 0)
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] &&
   cardPower[Hero, 1]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[1]
   image_index=0;
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   if Audio audio_play_sound(fxSwing, 1, 0)
   
} 

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   Attacking=1
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 3] &&
   cardPower[Hero, 3]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   Attacking=1
   
   if Audio { audio_play_sound(fxSwing, 2, 0) }
   
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 4] &&
   cardPower[Hero, 4]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   Attacking=1
   
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}

   

