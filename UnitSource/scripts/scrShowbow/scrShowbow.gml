if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0] &&
   cardPower[Hero, 0]>=1 {
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   scrPlayerCase()
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] && cardHandle[Hero]>=cardPower[Hero, 1] 
   and cardPower[Hero, 1]>=1 and showbowAttack[1]=0 {
   
   showbowAttack[1]=1
   showbowAttack[0]=3
   scrPlayerCase()
}

if showbowAttack[1] and Attacking=0 and showbowAttack[0]>0 {
   sprite_index=Atk[1];
   image_index=0;
   Attacking=1
   spellUse=1
   spellUsed[1]+=1
}
if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   sprite_index=Atk[2]
   image_index=0
   Attacking=1
   scrPlayerCase()
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 &&
   vspeed=0 and cardAcitve[Hero, 3] && cardPower[Hero, 3]>=1 {
   Attacking=1;
   sprite_index=Atk[3]
   image_index=0;

   scrPlayerCase()
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 4] 
    and cardPower[Hero, 4]>=1 {
   Attacking=1;
   sprite_index=Atk[4];
   image_index=0;

   scrPlayerCase()
   scrShield(spShield03, 1)
   try=5
}


if (sprite_index=spAttack00_03 or sprite_index=spAttack01_03 or sprite_index=spAttack02_03
 or sprite_index=spAttack03_03) and image_index=(image_number-1) {
 
   if (sprite_index=Atk[0])
   scrDamage(painType, 1, spArrow_03, image_blend, image_xscale, x, y-sprite_height/1.6, image_yscale)
   if (sprite_index=Atk[1]) 
   scrDamage(painType, 1, spArrow0_03, image_blend, image_xscale, x, y-sprite_height/1.6, image_yscale)
   if (sprite_index=Atk[2]) 
   scrDamage(painType, 1, spArrow1_03, c_white, image_xscale, x, y-sprite_height/1.6, image_yscale)
   if (sprite_index=Atk[3]) 
   scrDamage(painType, 1, spArrow2_03, c_white, image_xscale, x, y-sprite_height/1.6, image_yscale)
   
   if (sprite_index=Atk[0]) or (sprite_index=Atk[1])
   { if Audio audio_play_sound(fxBowRelease, 2, 0) }
   
   if (sprite_index=Atk[2] or sprite_index=Atk[3])
   { if Audio audio_play_sound(fxFire, 2, 0) }
   
   if sprite_index=spAttack01_03 showbowAttack[0]--
   if sprite_index=spAttack01_03 and showbowAttack[0]<=0
      { showbowAttack[0]=3 showbowAttack[1]=0 }
}

