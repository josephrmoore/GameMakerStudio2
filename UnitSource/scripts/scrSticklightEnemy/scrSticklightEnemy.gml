if Health<=Healthy[Hero, 1] chooseCards=choose(0, 1)
if Health<=Healthy[Hero, 1]*0.75 chooseCards=choose(1, 2)
if Health<=Healthy[Hero, 1]*0.5 chooseCards=choose(2, 3)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and cardHandle[Hero]>=cardPower[Hero, 0] and chooseCards=0 
   and (distance_to_object(Enemy)<=400) and cardPower[Hero, 0]>=1 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   
   
   scrDamage(painType, 1, spAttackBeam_04, image_blend, image_xscale*1.85, x, y-sprite_height/1.7, image_yscale)
   
   if Audio audio_play_sound(fxGlow00, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 1] && cardHandle[Hero]>=cardPower[Hero, 1] and chooseCards=1
   and distance_to_object(Enemy)<=500 and cardPower[Hero, 1]>=1 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   
   
   scrDamage(painType, 1, spAttackBeam1_04, image_blend, image_xscale*1.85, x, y-sprite_height/1.5, image_yscale)
   
   if Audio audio_play_sound(fxLightbeam, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 2] && cardHandle[Hero]>=cardPower[Hero, 2] and chooseCards=2
   and distance_to_object(Enemy)<=700 and cardPower[Hero, 2]>=1 {
   sprite_index=Atk[1]
   image_index=0;
   
   Attacking=1
   scrEnemyAtk()
   
   scrDamage(painType, 1, spAttackDemon_04, image_blend, image_xscale*1.99, Enemy.x, y, image_yscale*1.99)
   
   if Audio { audio_play_sound(fxCrow, 1, 0) audio_play_sound(fxHeavyStep, 1, 0)
      audio_play_sound(fxCrow, 1, 0) audio_play_sound(fxHeavyStep, 1, 0) }
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 4] && cardHandle[Hero]>=cardPower[Hero, 4] and chooseCards=4 
   and distance_to_object(Enemy)<=800 and Used[0]=0 and Used[1]=0 and cardPower[Hero, 4]>=1  {
   sprite_index=Atk[4]
   image_index=0;
   
   Attacking=1
   scrEnemyAtk()
   
   if Audio { audio_play_sound(fxAttack02, 2, 0) audio_play_sound(fxAttack02, 2, 0) }
   
   scrDamage(painType, 1, spWing_04, image_blend, image_xscale*1.85, x, y-sprite_height*1.85, image_yscale*1.85)
   scrDamage(painType, 1, spWing_04, image_blend, image_xscale*-1*1.85, x, y-sprite_height*1.85, image_yscale*1.85)
}
