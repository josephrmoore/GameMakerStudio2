if Health<=Healthy[Hero, 1] chooseCards=choose(0, 1)
if Health<=Healthy[Hero, 1]*0.8 chooseCards=choose(1, 2)
if Health<=Healthy[Hero, 1]*0.5 chooseCards=choose(0, 4, 3)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and chooseCards=0 
   and distance_to_object(Enemy)<=300 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   
   scrDamage(painType, 1, spApple_07, c_white, image_xscale, x+10*image_xscale, y-35, image_yscale)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 1] and chooseCards=1
   and distance_to_object(Enemy)<=10 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[1]
   image_index=0;
   
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 2] and chooseCards=2
   and distance_to_object(Enemy)<=10 {
   sprite_index=Atk[1]
   image_index=0;
   
   Attacking=1
   scrEnemyAtk()
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 3] and chooseCards=3 and distance_to_object(Enemy)<=10 {
   sprite_index=Atk[1]
   image_index=0;
   
   Attacking=1
   scrEnemyAtk()
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}

if Attacking=0 && Hurting=0 and cardActive[Hero, 4] and chooseCards=4
   and distance_to_object(Enemy)<=10 {
   
   scrEnemyAtk()
   
   sprite_index=Atk[1]
   image_index=0;
   
   scrDamage(painType, 0, spAttack01_07, c_white, image_xscale, x, y, image_yscale)
   Attacking=1
   
   if Audio { audio_play_sound(fxSwing, 2, 0) }
}
