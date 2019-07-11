if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and
   cardAcitve[Hero, 0] and cardPower[Hero, 0]>=1 {
   Attacking=1;
   sprite_index=Atk[0];
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, sprite_index, image_blend, image_xscale, x, y, image_yscale)
   
   cardHandle[Hero]-=cardPower[Hero, 0]
   
   audio_play_sound(fxKnife, 1, 0)
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and
   cardAcitve[Hero, 1] and cardPower[Hero, 1]>=1 {
   Attacking=1;
   sprite_index=Atk[1];
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, sprite_index, image_blend, image_xscale, x, y, image_yscale)
   
   cardHandle[Hero]-=cardPower[Hero, 1];
   
   scrShield(spShield01, 0)
   halfDamage=1
   shieldCount=2
}

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardHandle[0]>=cardPower[Hero, 2] and cardPower[Hero, 2]>=1
   {
   scrPlayerCase()
   Attacking=1;
   sprite_index=Land;
   image_index=0;
   Used[0]=1
   
   audio_play_sound(fxShield01, 1, 0)
   cardHandle[Hero]-=cardPower[Hero, 2]
   
   scrShield(spShield00, 0)
   halfDamage=1
   shieldCount=4
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 3] &&
   cardHandle[0]>=cardPower[Hero, 3] and cardPower[Hero, 3]>=1 {
   Attacking=1;
   sprite_index=Atk[3];
   image_index=0;
   activeMove[0]=1;
   activeAlarm[0]=oneFive[0];
   scrPlayerCase()
   cardHandle[Hero]-=cardPower[Hero, 3];
   audio_play_sound(fxWalk, 1, 0)
   
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 4] && cardHandle[0]>=cardPower[Hero, 4] 
    and Death[0]=0 and hp<=maxHP/1.5 and cardPower[Hero, 4]>=1 {
   Attacking=1;
   sprite_index=Atk[4];
   image_index=0;
   scrPlayerCase()
   cardHandle[Hero]-=cardPower[Hero, 4];
   audio_play_sound(fxKnife, 1, 0)
}

if activeAlarm[0]>=10 && activeAlarm[0]<=11 {
   x+=image_xscale*20;
}

if activeMove[0] {
   if activeAlarm[0]>0 activeAlarm[0]--;
}

if activeAlarm[0]=10 {
   scrDamage(painType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)
}


