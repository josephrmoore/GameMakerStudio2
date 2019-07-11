x = min(x, room_width);
x = max(x, 0);

if hp<=maxHP*0.2 && Attacking=0 && Hurting=0 &&
   vspeed=0 && cardPower[Hero, 3]>=1 and Hero=4 and !Death[0] {
   Attacking=1;
   sprite_index=Atk[3]
   image_index=0;
   Health=maxHP/1.25
   SticklightHeal[2]=1
   cardHandle[Hero]-=cardPower[Hero, 3];
   cardPower[Hero, 3]--
   
   if Audio audio_play_sound(fxHeartbeat, 1, 0)
   if Audio audio_play_sound(fxHeartbeat, 1, 0)
   if Audio audio_play_sound(fxHeartbeat, 1, 0)
   if Audio audio_play_sound(fxHeartbeat, 1, 0)
   if Audio audio_play_sound(fxHeartbeat, 1, 0)
}

if showbowAttack[2] {
   showbowAttack[3]--
   iD=instance_create(x+random_range(-50, 50), y+random_range(-50, -150), obFlareGame)
   iD.image_blend=c_green
   Move=Move/1.01
   JumpSpeed=JumpSpeed/1.01
}
if showbowAttack[3]<=0 { showbowAttack[3]=room_speed*4 showbowAttack[2]=0 JumpSpeed=JumpSpeedNormal Move=MoveNormal }

if SticklightHeal[2] {
   SticklightHeal[3]--
   iD=instance_create(x+random_range(-50, 50), y+random_range(-50, -150), obFlareGame)
   iD.image_blend=c_red
}
if SticklightHeal[3]<=0 { SticklightHeal[3]=room_speed*2.5 SticklightHeal[2]=0 }

for (i=0; i<5; i+=1)
{
    if cardMax[Hero, i]>cardPower[Hero, i]
       cardPower[Hero, i]+=cardCharge[Hero, i]
}

if Attacking {
    depth=-120
}
if Hurting depth=-90

with obReturn {
    if selfiD=other.id and sprite_index=spShield00
    {
    other.hspeed=other.hspeed*0.85
    }
}

if gravity!=0 and !Hurting friction=0.15

if Disable {
   if Enable and Enemy.Death[0]=0 and !Hurting {
        if (Hero=0) && sprite_index!=Dead and Death[0]=0 scrStickhugEnemy()
        if (Hero=1) && sprite_index!=Dead and Death[0]=0 scrTrickyhornEnemy()
        if (Hero=2) && sprite_index!=Dead and Death[0]=0 scrStruckhandEnemy()
        if (Hero=3) && sprite_index!=Dead and Death[0]=0 scrShowbowEnemy()
        if (Hero=4) && sprite_index!=Dead and Death[0]=0 scrSticklightEnemy()
        if (Hero=5) && sprite_index!=Dead and Death[0]=0 and distance_to_object(Enemy)<heroRange[Hero] scrNormieEnemy()
        if (Hero=6) && sprite_index!=Dead and Death[0]=0 and distance_to_object(Enemy)<heroRange[Hero] scrReaperEnemy()
        if (Hero=7) && sprite_index!=Dead and Death[0]=0 scrBoyEnemy()
        if (Hero=8) && sprite_index!=Dead and Death[0]=0 scrDraculaEnemy()
        if (Hero=9) && sprite_index!=Dead and Death[0]=0 scrVikingEnemy()
        if (Hero=10) && sprite_index!=Dead and Death[0]=0 scrJeatoEnemy()
    }
}


//if Health<=maxHP*0.9 and attackType[0]=0 { enemyMove=1 attackType[0]=1 alarm[0]=30 }
//if Health<=maxHP*0.75 and attackType[1]=0 { enemyMove=1 attackType[1]=1 alarm[0]=30 }
//if Health<=maxHP*0.50 and attackType[2]=0 { enemyMove=1 attackType[2]=1 alarm[0]=30 }
//if Health<=maxHP*0.15 and attackType[3]=0 { enemyMove=1 attackType[3]=1 alarm[0]=60 }

scrEnemyMove()

if !Attacking and !Hurting and vspeed=0 and enemyMoving=0 and !Death[0] and !Hurting sprite_index=Stand
if instance_exists(Enemy) and Enemy.Death[0] and !Hurting { enemyMoving=0 }


if gravity!=0 {
   x+=Move*image_xscale;
}

