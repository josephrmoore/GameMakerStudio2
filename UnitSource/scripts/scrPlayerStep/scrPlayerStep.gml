x = min(x, room_width)
x = max(x, 0)

if instance_exists(obEnemy)
{
    if instance_nearest(x, y, obEnemy).Death[0]=0 Enemy=instance_nearest(x, y, obEnemy) else 
       Enemy=instance_furthest(x, y, obEnemy)
}

if hp<=maxHP*0.2 && Attacking=0 && Hurting=0 &&
   vspeed=0 and cardAcitve[Hero, 3] && cardPower[Hero, 3]>=1 and Hero=4 and !Death[0] {
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

if Attacking {
    depth=-120;
}
if Hurting depth=-90;

for (i=0; i<5; i+=1)
{
    if cardMax[Hero, i]>cardPower[Hero, i]
       cardPower[Hero, i]+=cardCharge[Hero, i]
}

//if cardHandle[Hero]<maxMP { mp+=0.2 cardHandle[Hero]+=0.2 }
//if Health>hp hp++

with obReturn {
    if selfiD=other.id and sprite_index=spShield00
    {
    other.hspeed=other.hspeed*0.85
    }
}

if Disable and Enable and !Hurting and !gameEnd {
    if (Hero=0) && sprite_index!=Dead scrStickhug()
    if (Hero=1) && sprite_index!=Dead scrTrickyhorn()
    if (Hero=2) && sprite_index!=Dead scrStruckhand()
    if (Hero=3) && sprite_index!=Dead scrShowbow()
    if (Hero=4) && sprite_index!=Dead scrSticklight()
    if (Hero=5) && sprite_index!=Dead scrNormie()
    if (Hero=6) && sprite_index!=Dead scrReaper()
    if (Hero=7) && sprite_index!=Dead scrBoy()
    if (Hero=8) && sprite_index!=Dead scrDracula()
    if (Hero=9) && sprite_index!=Dead scrViking()
    if (Hero=10) && sprite_index!=Dead scrJeato()
}

if gravity!=0 and !Hurting friction=0.15;

    Key[0, 0]=keyboard_check(ord("A"));
    Key[1, 0]=keyboard_check(ord("D"));
    Key[2, 0]=keyboard_check(ord("W"));
    Key[3, 0]=keyboard_check(ord("S"));
    
    Key[0, 1]=keyboard_check_released(ord("A"));
    Key[1, 1]=keyboard_check_released(ord("D"));
    Key[2, 1]=keyboard_check_released(ord("W"));
    Key[3, 1]=keyboard_check_released(ord("S"));
    
    Key[0, 2]=keyboard_check_pressed(ord("A"));
    Key[1, 2]=keyboard_check_pressed(ord("D"));
    Key[2, 2]=keyboard_check_pressed(ord("W"));
    Key[3, 2]=keyboard_check_pressed(ord("S"));

if landTime[0]=1 {
    landTime[1]--;
}

if landTime[1]<=0 {
    landTime[1]=3;
    landTime[0]=0;
    Move=MoveNormal
}

if sprite_index!=Dead && Attacking=0 && Hurting=0 and Disable and Enable {
     if (MoveType=2 or MoveType=3) && Jumpy and JumpSpeed!=0 {
        if vspeed=0  {
           vspeed-=JumpSpeed
           sprite_index=Jump;
           image_index=0
           Jumpy=0;
        }
    }
    
    if MoveType=0 {
        if sprite_index!=Land && sprite_index!=Jump sprite_index=Walk;
        hspeed=0
        if sprite_index!=Land && (gravity=0 or Move=0.5) { image_xscale=-nXscale; x-=Move; }
    }
    
    if MoveType=1 {
        if sprite_index!=Land && sprite_index!=Jump sprite_index=Walk;
        hspeed=0
        if sprite_index!=Land && (gravity=0 or Move=0.5) { image_xscale=nXscale; x+=Move; }
    }
       
    if Key[1, 0] { MoveType=1; scrSendType() }
    if Key[0, 0] { MoveType=0; scrSendType() }
    
    if Key[2, 2] and gravity=0 and JumpSpeed!=0 { MoveType=2; Move=0.5; scrSendType() }
    if Key[2, 2] and gravity=0 and (Key[0, 0] or Key[1, 0]) { MoveType=3; Move=MoveNormal; scrSendType() }
    
    if Key[1, 1] { MoveType=-1; scrSendType() if Attacking=0 && Hurting=0 && gravity=0 sprite_index=Stand; }
    if Key[0, 1] { MoveType=-1; scrSendType()  if Attacking=0 && Hurting=0 && gravity=0 sprite_index=Stand; }
    
    if Key[2, 1] && Jumpy and gravity=0  { MoveType=-1; scrSendType() }
}

if gravity!=0 {
   x+=Move*image_xscale;
}

scrQuest()

