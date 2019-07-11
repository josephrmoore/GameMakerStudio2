if Health<=Healthy[Hero, 1] chooseCards=choose(0, 1, 3)
if Health<=Healthy[Hero, 1]*0.5 chooseCards=choose(3, 2)
if Health<=Healthy[Hero, 1]*0.3 chooseCards=choose(4, 3)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and cardHandle[0]>=cardPower[Hero, 0] and chooseCards=0 
   and (distance_to_object(Enemy)<=10) and cardPower[Hero, 0]>=1 {
   Attacking=1;
   sprite_index=Atk[0];
   image_index=0;
   scrEnemyAtk()
   scrDamage(painType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)
   
   cardHandle[Hero]-=cardPower[Hero, 0];
   
   audio_play_sound(fxKnife, 1, 0)
}

if Attacking=0 && Hurting=0 and cardActive[Hero, 1] && cardHandle[0]>=cardPower[Hero, 1] and chooseCards=1
   and (distance_to_object(Enemy)<=5) and cardPower[Hero, 1]>=1 {
   Attacking=1;
   sprite_index=Atk[1];
   image_index=0;
   scrEnemyAtk()
   scrDamage(painType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)
   audio_play_sound(fxShield00, 1, 0)
   scrShield(spShield01, 0)
   halfDamage=1
   shieldCount=2
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 2] && cardHandle[0]>=cardPower[Hero, 2] and chooseCards=2 
    and cardPower[Hero, 2]>=1 {
   Attacking=1;
   sprite_index=Land
   image_index=0;
   audio_play_sound(fxShield01, 1, 0)
   cardHandle[Hero]-=cardPower[Hero, 2];
   Used[0]=1
   Attacking=1;
   sprite_index=Land;
   image_index=0;
   scrEnemyAtk()
   cardHandle[0]-=cardPower[Hero, 2];
   
   scrShield(spShield00, 0)
   halfDamage=1
   shieldCount=4
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 3] && cardHandle[0]>=cardPower[Hero, 3] and chooseCards=3 
   and (distance_to_object(Enemy)<=30) and cardPower[Hero, 3]>=1 {
   Attacking=1;
   sprite_index=Atk[3];
   image_index=0;
   activeMove[0]=1;
   activeAlarm[0]=oneFive[0];
   cardHandle[Hero]-=cardPower[Hero, 3];
   scrEnemyAtk()
   
   audio_play_sound(fxWalk, 1, 0)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 4] && cardHandle[0]>=cardPower[Hero, 4] and chooseCards=4 
   and (distance_to_object(Enemy)<=1000) and cardPower[Hero, 4]>=1 and hp<=maxHP/1.5 {
   Attacking=1;
   sprite_index=Atk[4];
   image_index=0;
   cardHandle[Hero]-=cardPower[Hero, 3];
   scrEnemyAtk()
   
   audio_play_sound(fxKnife, 1, 0)
}

if activeMove[0] {
   if activeAlarm[0]>0 activeAlarm[0]--;
}

if activeAlarm[0]>=10 && activeAlarm[0]<=11 {
   x+=image_xscale*20;
}

if activeAlarm[0]=10 {
   scrDamage(painType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)
}
