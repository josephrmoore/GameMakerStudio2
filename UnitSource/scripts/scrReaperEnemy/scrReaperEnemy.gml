if Health<=Healthy[Hero, 1] chooseCards=choose(2, 3)
if Health<=Healthy[Hero, 1]*0.8 chooseCards=choose(2, 4)
if Health<=Healthy[Hero, 1]*0.5 chooseCards=choose(3, 2, 4, 1)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and cardHandle[Hero]>=cardPower[Hero, 0] and chooseCards=0 
   and cardPower[Hero, 0]>=1 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Land
   image_index=0;
   scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
   
   if Audio audio_play_sound(fxSwing, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 1] && cardHandle[Hero]>=cardPower[Hero, 1] and chooseCards=1
   and cardPower[Hero, 1]>=1 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Land
   image_index=0;
   scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
   scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
   if Audio audio_play_sound(fxSwing, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 2] && cardHandle[Hero]>=cardPower[Hero, 2] and chooseCards=2
   and cardPower[Hero, 2]>=1 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Land
   image_index=0;
   scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
   scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
   scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
   if Audio audio_play_sound(fxSwing, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 3] && cardHandle[Hero]>=cardPower[Hero, 3] and chooseCards=3
    and cardPower[Hero, 3]>=1  {
        if Audio audio_play_sound(fxSwing, 1, 0)
       scrEnemyAtk()
       Attacking=1;
       sprite_index=Land
       image_index=0;
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
}

if Attacking=0 && Hurting=0 and cardActive[Hero, 4] and chooseCards=4
   and cardPower[Hero, 4]>=1 {
       if Audio audio_play_sound(fxSwing, 1, 0)
       scrEnemyAtk()
       Attacking=1;
       sprite_index=Land
       image_index=0;
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
       scrDamage(painType, 1, spAttack_06, c_black, image_xscale, x, y, image_yscale)
}
