if Health<=Healthy[Hero, 1] chooseCards=choose(0, 2)
if Health<=Healthy[Hero, 1]*0.75 chooseCards=choose(1, 3)
if Health<=Healthy[Hero, 1]*0.3 chooseCards=choose(4, 3, 2)

if Attacking=0 && Hurting=0 and cardActive[Hero, 0] and cardHandle[Hero]>=cardPower[Hero, 0] and chooseCards=0 
   and (distance_to_object(Enemy)<=10) and cardPower[Hero, 0]>=1 {
   Attacking=1;
   sprite_index=Atk[0];
   image_index=0;
   scrEnemyAtk()
   scrDamage(painType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)
   
   cardHandle[Hero]-=cardPower[Hero, 0];
}

if Attacking=0 && Hurting=0 and cardActive[Hero, 1] && cardHandle[Hero]>=cardPower[Hero, 1] and chooseCards=1
   and distance_to_object(Enemy)<=800 and cardPower[Hero, 1]>=1 {
    Attacking=1;
   sprite_index=Land;
   image_index=0;
   audio_play_sound(fxShield00, 1, 0)
   cardHandle[Hero]-=cardPower[Hero, 1];
   Used[0]=1
   
   scrEnemyAtk()
   scrShield(spShield02, 0)
   shieldCount=3
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 2] && cardHandle[Hero]>=cardPower[Hero, 2] and chooseCards=2 
   and distance_to_object(Enemy)<=800 and cardPower[Hero, 2]>=1 {
   scrEnemyAtk()
   
   scrDamage(painType, 1, spDog00_02, image_blend, image_xscale, x, y, image_yscale)
   
   /*
    iD=instance_create(x+50*image_xscale, y, obAnimal)
    iD.follow=id;
    iD.sprite_index=spDog02_02
    iD.image_blend=image_blend
    iD.Animal=0
    iD.Enemy=Enemy.id
    iD.playerType=playerType
    iD.Hero=Hero
    iD.painType=painType
    iD.painDefault=painDefault
    iD.Used[1]=Used[1]
    iD.spellUse=spellUse
    with iD event_user(0)
    cardHandle[Hero]-=cardPower[Hero, 2];
    //audio_play_sound(fxDog00, 1, 0)
   */   
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 3] && cardHandle[Hero]>=cardPower[Hero, 3] and chooseCards=3 
   and distance_to_object(Enemy)<=100 and cardPower[Hero, 3]>=1 {
   Attacking=1;
   sprite_index=Atk[3];
   image_index=0;
   scrEnemyAtk()
   cardHandle[Hero]-=cardPower[Hero, 3];
   hspeed+=20*image_xscale
   scrDamage(painType, 0, Atk[3], c_white, image_xscale, x, y, image_yscale)
}

if Attacking=0 && Hurting=0 && vspeed=0 and cardActive[Hero, 4] && cardHandle[Hero]>=cardPower[Hero, 4] and chooseCards=4 
   and distance_to_object(Enemy)<=800 and cardPower[Hero, 4]>=1  {
   Attacking=1;
   sprite_index=Atk[4];
   image_index=0;
   Used[1]=1
   cardHandle[Hero]-=cardPower[Hero, 4];
   scrEnemyAtk()
   
   scrShield(spSword00, 2)
   attackSword=4
    doubleDamage=1
}
