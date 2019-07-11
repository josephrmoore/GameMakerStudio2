if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0]
  and cardPower[Hero, 0]>=1 {
   Attacking=1;
   sprite_index=Atk[0];
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, sprite_index, image_blend, image_xscale, x, y, image_yscale)
   
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] && cardHandle[Hero]>=cardPower[Hero, 1] 
     and cardPower[Hero, 1]>=1 {
   Attacking=1;
   sprite_index=Land;
   image_index=0;
   audio_play_sound(fxShield00, 1, 0)
   cardHandle[Hero]-=cardPower[Hero, 1];
   Used[0]=1
   
   scrPlayerCase()
   scrShield(spShield02, 0)
   shieldCount=3
}

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   Attacking=1;
   sprite_index=Land
   image_index=0;
   scrPlayerCase()
   
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
    //cardHandle[Hero]-=cardPower[Hero, 2];
    */
    //audio_play_sound(fxDog00, 1, 0)
    
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 &&
   vspeed=0 and cardAcitve[Hero, 3] and cardPower[Hero, 3]>=1 {
   Attacking=1;
   sprite_index=Atk[3];
   image_index=0;

   scrPlayerCase()
   hspeed=20*image_xscale
   scrDamage(painType, 0, Atk[3], c_white, image_xscale, x, y, image_yscale)
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 4] && cardHandle[Hero]>=cardPower[Hero, 4] 
    and Death[0]=0 and cardPower[Hero, 4]>=1 {
   Attacking=1;
   sprite_index=Atk[4];
   image_index=0;
   Used[1]=1
   cardHandle[Hero]-=cardPower[Hero, 4];
   scrPlayerCase()
   
   
   attackSword=4
   audio_play_sound(fxSword00, 1, 0)
   doubleDamage=1
   
   scrShield(spSword00, 2)
   
   attackSword=4
   doubleDamage=1
}

