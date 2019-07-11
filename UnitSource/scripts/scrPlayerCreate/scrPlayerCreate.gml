/// @description Start
camActive=0
enemyRestore=0

colorType=c_black

cardHandle[Hero]=200
destroy=0
fakeHurt=-1

gotHit=0
networkiD=-1

if Hero=0 or Hero=1 or Hero=2 attackType=0
if Hero=3 attackType=1

halfDamage=0
doubleDamage=0
camRestore=1
camEnd=0

attackSword=-1
shieldCount=-1
try=-1

heroRange[0]=1
heroRange[1]=1
heroRange[2]=1
heroRange[3]=550
heroRange[4]=200
heroRange[5]=1
heroRange[6]=50
heroRange[7]=1
heroRange[8]=1
heroRange[9]=1

for (i=0; i<10; i+=1)
{
    oneFive[i]=15
    activeMove[i]=0
    activeAlarm[i]=oneFive
    Many[i]=Mode[0]
}

showbowAttack[0]=3
showbowAttack[1]=0
showbowAttack[2]=0 //Posion
showbowAttack[3]=room_speed*4 //Posion Timer

SticklightHeal[0]=2
SticklightHeal[1]=0
SticklightHeal[2]=0
SticklightHeal[3]=room_speed*2

NormieChild[0]=5
NormieChild[1]=0
NormieChild[2]=0
NormieChild[3]=30

vikingAttack[0]=3
vikingAttack[1]=0
vikingAttack[2]=0
vikingAttack[3]=room_speed*4

vikingHit=4

playOnce=0
enemyMoving=0

for (i=0; i<5; i+=1)
{
    spellUsed[i]=0
}
spellUse=0

stepShadow=0

enemyMove=0;

if playerType=1 image_blend=colorBlend[Hero]

if playerType=0 {
    image_blend=colorBlend[Hero]
}
blend=image_blend

Used[0]=0
Used[1]=0
Used[2]=0

Hurt2=1

enemyAlarm=irandom_range(50, 100)
Chaos[0]=irandom_range(90, 70)
Chaos[1]=irandom_range(40, 10)
moveHappen=0;

healthScale=2

Hurt=0;

Death[0]=0;
Death[1]=0;
Death[2]=0;
Death[3]=0;
Death[4]=0;

objCreated=0;

HoldStill=0;
angleMove=0;

landTime[0]=0;
landTime[1]=3;

Jumpy=0;
Standing=0;
Jumping=0;
Landing=0;
Double=0;
MoveType=-1;
Attacking=0;
Hurting=0;

scrSprites()
scrPlayerCard()
