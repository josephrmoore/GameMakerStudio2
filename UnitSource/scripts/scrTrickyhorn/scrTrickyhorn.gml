if keyboard_check_pressed(controlKey[0]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 0] and cardPower[Hero, 0]>=1 {
   Attacking=1;
   sprite_index=Atk[0];
   image_index=0;
   scrPlayerCase()
   scrDamage(painType, 0, sprite_index, c_white, image_xscale, x, y, image_yscale)
   
   audio_play_sound(fxAttack02, 1, 0)
   
}

if keyboard_check_pressed(controlKey[1]) && Attacking=0 && Hurting=0 and cardAcitve[Hero, 1] 
    and gravity=0 and distance_to_object(Enemy)<=900 and cardPower[Hero, 1]>=1 {
   Attacking=1;
   sprite_index=Atk[1];
   image_index=0;
   
   audio_play_sound(fxGlow00, 1, 0)
   scrPlayerCase()
   with Enemy {
        
       if Hero=0 {
            scrDamage(playerType, 1, spAttack03_00, other.image_blend, image_xscale, x+50*image_xscale, y, image_yscale)
       }
       if Hero=1 {
            scrDamage(playerType, 1, choose(spAttack00_01, spAttack02_01), other.image_blend, image_xscale, x, y, image_yscale)
       }
       if Hero=2 {
            scrDamage(playerType, 1, choose(spAttack03_02, spAttack00_02), other.image_blend, image_xscale, x, y, image_yscale)
       }
       if Hero=3 {
            showBowReflect=3
            scrDamage(playerType, 1, choose(spAttack01_03, spAttack00_03, spAttack02_03, spAttack03_03), other.image_blend, image_xscale, x+250*image_xscale*-1, y, image_yscale)
       }
       if Hero=4 {
            choose(
            scrDamage(playerType, 1, spAttackBeam1_04, image_blend, image_xscale*1.85, other.x, y-sprite_height/1.5, image_yscale)
            ,
            scrDamage(playerType, 1, spAttackDemon_04, image_blend, image_xscale*1.99, x, y, image_yscale*1.99)
            ,
            scrDamage(playerType, 1, spAttackBeam_04, image_blend, image_xscale*1.85, other.x, y-sprite_height/1.7, image_yscale))
       }
       if Hero=5 {
            scrDamage(playerType, 1, choose(spAttack01_05, spAttack00_05, spAttack02_05), other.image_blend, image_xscale, x+40*image_xscale, y, image_yscale)
       }
       if Hero=6 {
            scrDamage(playerType, 1, spAttack_06, other.image_blend, image_xscale, x, y, image_yscale)
       }
       
       if Hero=7 {
            scrDamage(playerType, 1, spAttack01_07, other.image_blend, image_xscale, x, y, image_yscale)
       }
       
       if Hero=8 {
            scrDamage(playerType, 1, spBats_08, other.image_blend, image_xscale, x, y-100, image_yscale)
       }
       
       if Hero=9 {
            scrDamage(playerType, 1, spAttack_09, other.image_blend, image_xscale, x, y, image_yscale)
       }
       if Hero=10 {
            scrDamage(playerType, 1, choose(spAttack01_10, spAttack00_10), other.image_blend, image_xscale, x, y, image_yscale)
       }
   }
}

if keyboard_check_pressed(controlKey[2]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 2] &&
   cardPower[Hero, 2]>=1 {
   scrPlayerCase()
   scrDamage(painType, 1, Atk[2], image_blend, image_xscale, x+150*image_xscale, y, image_yscale)
   
   Attacking=1
   sprite_index=spSpawn_01;
   image_index=0;
   
   audio_play_sound(fxTeeth, 1, 0)
}

if keyboard_check_pressed(controlKey[3]) && Attacking=0 && Hurting=0 && vspeed=0 and cardAcitve[Hero, 3] && 
   cardHandle[1]>=cardPower[Hero, 3] and cardPower[Hero, 3]>=1 {
   Attacking=1
   sprite_index=spSpawn_01;
   image_index=0;
   scrPlayerCase()
   
   activeMove[2]=1;
   activeAlarm[2]=oneFive[2];
   
   //audio_play_sound(fxDemon00, 1, 0)
   //audio_sound_pitch(fxBot00, random_range(0.7, 1));
}

if keyboard_check_pressed(controlKey[4]) && Attacking=0 && Hurting=0 &&
   vspeed=0 and cardAcitve[Hero, 4] and cardPower[Hero, 4]>=1 {
   sprite_index=spSpawn_01;
   image_index=0;
   activeMove[1]=1;
   activeAlarm[1]=oneFive[1];
   scrPlayerCase()
   Attacking=1
   
   //audio_play_sound(fxBot00, 1, 0)
   //audio_sound_pitch(fxBot00, random_range(0.8, 1.2));
}

if activeMove[1] {
   if activeAlarm[1]>0 activeAlarm[1]--;
}
if activeAlarm[1]=5 {
   scrDamage(painType, 1, Atk[4], image_blend, image_xscale, x+image_xscale*100, y, image_yscale)
}

if activeMove[3] {
   if activeAlarm[3]>0 activeAlarm[3]--
}


if activeAlarm[3]=0 {
   with Enemy {
    painType=painDefault
   }
}

if activeMove[2] {
   if activeAlarm[2]>0 activeAlarm[2]--;
}

if activeAlarm[2]=5 {
   scrDamage(painType, 1, spAttack03_01, image_blend, image_xscale, Enemy.x, 0, image_yscale)
}

