if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0] &&
   cardPower[Hero, 0]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   
   scrDamage(painType, 0, sprite_index, image_blend, image_xscale, x, y, image_yscale)
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] &&
   cardPower[Hero, 1]>=1 {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Atk[1]
   image_index=0;
   
   scrDamage(painType, 0, sprite_index, image_blend, image_xscale, x, y, image_yscale)
   
   if Audio audio_play_sound(fxKnife0, 1, 0)
} 

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   sprite_index=Atk[2]
   image_index=0;
   
   Attacking=1
   scrPlayerCase()
   
   scrDamage(painType, 0, sprite_index, image_blend, image_xscale, x, y, image_yscale)
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 3] &&
   cardPower[Hero, 3]>=1 {
   sprite_index=Atk[3]
   image_index=0;
   
   Attacking=1
   scrPlayerCase()
   scrDamage(painType, 1, spKnife_05, image_blend, image_xscale, Enemy.x, 200, image_yscale)
   if Audio { audio_play_sound(fxAttack02, 2, 0) }
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 4] &&
   cardPower[Hero, 4]>=1 {
   
   scrPlayerCase()
   if Audio { audio_play_sound(fxCharge0, 2, 0) }
   
   //NormieChild[2]=1
   
   scrDamage(painType, 1, Atk[4], c_white, 0.5, x-100, y, 0.5)
   scrDamage(painType, 1, Atk[4], c_white, 0.7, x-50, y, 0.7)
   scrDamage(painType, 1, Atk[4], c_white, 0.6, x, y, 0.6)
   scrDamage(painType, 1, Atk[4], c_white, 0.4, x+100, y, 0.4)
   scrDamage(painType, 1, Atk[4], c_white, 0.8, x+150, y, 0.8)
}

/*
if NormieChild[2] {
   NormieChild[3]--
}

if NormieChild[0]>0 and NormieChild[3]=0 { NormieChild[0]-- scrDamage(painType, 1, Atk[4], image_blend, 0.4, x, y, 0.4) NormieChild[3]=30 }
if NormieChild[0]<1 { NormieChild[0]=5 NormieChild[2]=0 }

