if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and
   cardPower[Hero, 0]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
   
   if Audio audio_play_sound(fxSwing, 1, 0)
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 1] &&
   cardPower[Hero, 1]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   vikingAttack[1]=1
   vikingAttack[0]=3
   Attacking=1
   scrPlayerCase()
   if Audio audio_play_sound(fxSwing, 1, 0)
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
}

if vikingAttack[1] and vikingAttack[0]>0 and Attacking=0 and distance_to_object(Enemy)<=30 {
   sprite_index=Atk[1];
   image_index=0;
   Attacking=1
   spellUse=1
   spellUsed[1]+=1
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
   
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 3] &&
   cardPower[Hero, 3]>=1 {
   sprite_index=Land
   image_index=0;
   scrShield(spShield00, 0)
   halfDamage=1
   shieldCount=4
   Attacking=1
   scrPlayerCase()
   if Audio { audio_play_sound(fxShield00, 2, 0) }
   
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 4] &&
   cardPower[Hero, 4]>=1 {
   sprite_index=Atk[1]
   image_index=0
   scrPlayerCase()
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
   Attacking=1
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}

