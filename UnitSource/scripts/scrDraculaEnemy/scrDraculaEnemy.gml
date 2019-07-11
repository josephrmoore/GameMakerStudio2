if Health<=Healthy[Hero, 1] chooseCards=choose(0, 1)
if Health<=Healthy[Hero, 1]*0.75 chooseCards=choose(1, 2 ,0)
if Health<=Healthy[Hero, 1]*0.45 chooseCards=choose(4, 3, 2)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and chooseCards=0 
   and distance_to_object(Enemy)<=300 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[0]
   image_index=0;
   
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-150, image_yscale)
   if Audio audio_play_sound(fxBat, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 1] and chooseCards=1
   and distance_to_object(Enemy)<=350 {
   scrEnemyAtk()
   Attacking=1;
   sprite_index=Atk[1]
   image_index=0;
   
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   if Audio audio_play_sound(fxBat, 1, 0)
   
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 2] and chooseCards=2
   and distance_to_object(Enemy)<=400 {
   sprite_index=Atk[1]
   image_index=0;
   
   Attacking=1
   scrEnemyAtk()
   
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   if Audio audio_play_sound(fxBat, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 3] and distance_to_object(Enemy)<=400 and chooseCards=3 {
   sprite_index=Atk[1]
   image_index=0;
   
   Attacking=1
   scrEnemyAtk()
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   if Audio audio_play_sound(fxBat, 1, 0)
   if Audio audio_play_sound(fxBat, 1, 0)
}

if Attacking=0 && Hurting=0 and cardActive[Hero, 4] and chooseCards=4
   and distance_to_object(Enemy)<=450 {
   
   scrEnemyAtk()
   
   sprite_index=Atk[1]
   image_index=0;
   
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   scrDamage(painType, 1, spBats_08, c_white, image_xscale, x, y-random_range(150, 250), image_yscale)
   if Audio audio_play_sound(fxBat, 1, 0)
   if Audio audio_play_sound(fxBat, 1, 0)
   if Audio audio_play_sound(fxBat, 1, 0)
}
