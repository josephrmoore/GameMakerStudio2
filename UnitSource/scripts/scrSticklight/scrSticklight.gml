if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0] &&
   cardPower[Hero, 0]>=1 {
   
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 1, spAttackBeam_04, image_blend, image_xscale*1.85, x, y-sprite_height/1.7, image_yscale)
   
   
   if Audio audio_play_sound(fxGlow00, 1, 0)
   
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] &&
   cardPower[Hero, 1]>=1 {
   
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 1, spAttackBeam1_04, image_blend, image_xscale*1.85, x, y-sprite_height/1.5, image_yscale)
   
   if Audio audio_play_sound(fxLightbeam, 1, 0)
} 

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   
   Attacking=1
   scrPlayerCase()
   
   scrDamage(painType, 1, spAttackDemon_04, image_blend, image_xscale*1.99, Enemy.x, y, image_yscale*1.99)
   
   if Audio { audio_play_sound(fxCrow, 1, 0) audio_play_sound(fxHeavyStep, 1, 0)
      audio_play_sound(fxCrow, 1, 0) audio_play_sound(fxHeavyStep, 1, 0) }
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 4] &&
   cardPower[Hero, 4]>=1 {
   sprite_index=Atk[4]
   image_index=0;
   
   Attacking=1
   scrPlayerCase()
   
   if Audio { audio_play_sound(fxAttack02, 2, 0) audio_play_sound(fxAttack02, 2, 0) }
   
   scrDamage(painType, 1, spWing_04, image_blend, image_xscale*1.85, x, y-sprite_height*1.5, image_yscale*1.85)
   scrDamage(painType, 1, spWing_04, image_blend, image_xscale*-1*1.85, x, y-sprite_height*1.5, image_yscale*1.85)
}

