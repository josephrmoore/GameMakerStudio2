if Health<=Healthy[Hero, 1] chooseCards=choose(0, 1)
if Health<=Healthy[Hero, 1]*0.8 chooseCards=choose(1, 2)
if Health<=Healthy[Hero, 1]*0.5 chooseCards=choose(0, 4, 3)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and cardHandle[Hero]>=cardPower[Hero, 0] and chooseCards=0 
   and cardPower[Hero, 0]>=1 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 1] and chooseCards=1
    {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[1]
   image_index=0;
   vikingAttack[1]=1
   vikingAttack[0]=3
   Attacking=1
   if Audio audio_play_sound(fxSwing, 1, 0)
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
}

if vikingAttack[1] and vikingAttack[0]>0 and Attacking=0 {
   sprite_index=Atk[1];
   image_index=0;
   Attacking=1
   spellUse=1
   spellUsed[1]+=1
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
   
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 3] and chooseCards=3 {
   sprite_index=Atk[1]
   image_index=0;
   scrEnemyAtk()
   scrShield(spShield00, 0)
   halfDamage=1
   shieldCount=4
   Attacking=1
   
   if Audio { audio_play_sound(fxShield00, 2, 0) }
}

if Attacking=0 && Hurting=0 and cardActive[Hero, 4] and chooseCards=4
   and cardPower[Hero, 4]>=1 {
   
   scrEnemyAtk()
   
   sprite_index=Atk[1]
   image_index=0;
   
   scrDamage(painType, 0, spAttack_09, c_white, image_xscale, x, y, image_yscale)
   Attacking=1
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}
