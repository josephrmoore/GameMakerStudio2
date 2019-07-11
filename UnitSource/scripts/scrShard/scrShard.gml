globalvar Wins totalMatch Loss;

Level=scrLoadData("Level", 1)
Ruby=scrLoadData("Ruby", 500)
Begin=scrLoadData("Begin", 0)
creatureChest=scrLoadData("creatureChest", 0)
Victory=scrLoadData("Victory", 0)
Help=scrLoadData("Help", 0)

if Achievement[0, 48]=0 {
   scrQuestCreate(48)
   randomChamp=irandom(9)
   scrSaveData("champOwned"+string(randomChamp), 1)
   champOwned[randomChamp]=1
   Champion=randomChamp
   scrSaveData("Champion", randomChamp)
}

Champion=scrLoadData("Champion", -1)
helpMade=scrLoadData("helpMade", 0)
Burn=scrLoadData("Burn", 0)
maxXP=scrLoadData("maxXP", 100)
fakeBurn=scrLoadData("fakeBurn", 0)
missionReach=scrLoadData("missionReach", 0)
Cookie=scrLoadData("Cookie", 0)
Champs=scrLoadData("Champs", 1)
Version=scrLoadData("Version", 1)
Wins=scrLoadData("Wins", 0)
totalMatch=scrLoadData("totalMatch", 0)
Loss=scrLoadData("Loss", 0)

globalvar shardCost shardLimit shardFull;

for (i=0; i<4; i+=1) { shardCost[0, i]=champCost[0]*.015 }
for (i=0; i<4; i+=1) { shardCost[1, i]=champCost[1]*.015 }
for (i=0; i<4; i+=1) { shardCost[2, i]=champCost[2]*.015 }
for (i=0; i<4; i+=1) { shardCost[3, i]=champCost[3]*.015 }
for (i=0; i<4; i+=1) { shardCost[4, i]=champCost[4]*.015 }
for (i=0; i<4; i+=1) { shardCost[5, i]=champCost[5]*.015 }

for (i=0; i<=maxChamp; i+=1) { shardFull[i]=0 }

shardLimit[0]=4
shardLimit[1]=4
shardLimit[2]=4
shardLimit[3]=4
shardLimit[4]=4
shardLimit[5]=4

dropRate[0, 0]=19
dropRate[0, 1]=15
dropRate[0, 2]=9
dropRate[0, 3]=9

bodyParts[0, 0]="Sharp hug"
bodyParts[0, 1]="Sharp hands"
bodyParts[0, 2]="Thicc Legs"
bodyParts[0, 3]="Defense shield"

partLimit[0]=4
bodyType[0]=spBodypart_00

dropRate[1, 0]=30
dropRate[1, 1]=9
dropRate[1, 2]=5
dropRate[1, 3]=3

bodyParts[1, 0]="Mind control"
bodyParts[1, 1]="Robot swords"
bodyParts[1, 2]="Demon"
bodyParts[1, 3]="A Dino"

partLimit[1]=4
bodyType[1]=spBodypart_01

dropRate[2, 0]=31
dropRate[2, 1]=17
dropRate[2, 2]=5
dropRate[2, 3]=15

bodyParts[2, 0]="Empty brain"
bodyParts[2, 1]="Horny hand"
bodyParts[2, 2]="Fat Legs"
bodyParts[2, 3]="Return shield"

partLimit[2]=4
bodyType[2]=spBodypart_02

dropRate[3, 0]=15
dropRate[3, 1]=10
dropRate[3, 2]=3
dropRate[3, 3]=7

bodyParts[3, 0]="Ninjabody"
bodyParts[3, 1]="Arrow"
bodyParts[3, 2]="Ninjahead"
bodyParts[3, 3]="Ninjabow"

partLimit[3]=4
bodyType[3]=spBodypart_03

dropRate[4, 0]=15
dropRate[4, 1]=10
dropRate[4, 2]=3
dropRate[4, 3]=7

bodyParts[4, 0]="Bot Leg"
bodyParts[4, 1]="Health Wire"
bodyParts[4, 2]="Laser gun"
bodyParts[4, 3]="Death hair"

partLimit[4]=4
bodyType[4]=spBodypart_04

dropRate[5, 0]=20
dropRate[5, 1]=15
dropRate[5, 2]=10
dropRate[5, 3]=5

bodyParts[5, 0]="Roundhead"
bodyParts[5, 1]="Ladybody"
bodyParts[5, 2]="Evilhand"
bodyParts[5, 3]="Coldlegs"

partLimit[5]=4
bodyType[5]=spBodypart_05

globalvar cardHitGlobal cardHitDefault;

cardHitGlobal[0, 0]=scrLoadData("cardHit"+ string(0)+""+string(0), 15)
cardHitGlobal[0, 1]=scrLoadData("cardHit"+ string(0)+""+string(1), 80)
cardHitGlobal[0, 2]=scrLoadData("cardHit"+ string(0)+""+string(2), 0)
cardHitGlobal[0, 3]=scrLoadData("cardHit"+ string(0)+""+string(3), 30)
cardHitGlobal[0, 4]=scrLoadData("cardHit"+ string(0)+""+string(4), 0)

cardHitGlobal[1, 0]=scrLoadData("cardHit"+ string(1)+""+string(0), 100)
cardHitGlobal[1, 1]=scrLoadData("cardHit"+ string(1)+""+string(1), 0)
cardHitGlobal[1, 2]=scrLoadData("cardHit"+ string(1)+""+string(2), 200)
cardHitGlobal[1, 3]=scrLoadData("cardHit"+ string(1)+""+string(3), 280)
cardHitGlobal[1, 4]=scrLoadData("cardHit"+ string(1)+""+string(4), 230)

cardHitGlobal[2, 0]=scrLoadData("cardHit"+ string(2)+""+string(0), 10)
cardHitGlobal[2, 1]=scrLoadData("cardHit"+ string(2)+""+string(1), 0)
cardHitGlobal[2, 2]=scrLoadData("cardHit"+ string(2)+""+string(2), 30)
cardHitGlobal[2, 3]=scrLoadData("cardHit"+ string(2)+""+string(3), 40)
cardHitGlobal[2, 4]=scrLoadData("cardHit"+ string(2)+""+string(4), 0)

cardHitGlobal[3, 0]=scrLoadData("cardHit"+ string(3)+""+string(0), 50)
cardHitGlobal[3, 1]=scrLoadData("cardHit"+ string(3)+""+string(1), 30)
cardHitGlobal[3, 2]=scrLoadData("cardHit"+ string(3)+""+string(2), 75)
cardHitGlobal[3, 3]=scrLoadData("cardHit"+ string(3)+""+string(3), 25)
cardHitGlobal[3, 4]=scrLoadData("cardHit"+ string(3)+""+string(4), 0)

cardHitGlobal[4, 0]=scrLoadData("cardHit"+ string(4)+""+string(0), 35)
cardHitGlobal[4, 1]=scrLoadData("cardHit"+ string(4)+""+string(1), 50)
cardHitGlobal[4, 2]=scrLoadData("cardHit"+ string(4)+""+string(2), 110)
cardHitGlobal[4, 3]=scrLoadData("cardHit"+ string(4)+""+string(3), 0)
cardHitGlobal[4, 4]=scrLoadData("cardHit"+ string(4)+""+string(4), 70)

cardHitGlobal[5, 0]=scrLoadData("cardHit"+ string(5)+""+string(0), 15)
cardHitGlobal[5, 1]=scrLoadData("cardHit"+ string(5)+""+string(1), 30)
cardHitGlobal[5, 2]=scrLoadData("cardHit"+ string(5)+""+string(2), 40)
cardHitGlobal[5, 3]=scrLoadData("cardHit"+ string(5)+""+string(3), 30)
cardHitGlobal[5, 4]=scrLoadData("cardHit"+ string(5)+""+string(4), 20)

cardHitGlobal[6, 0]=scrLoadData("cardHit"+ string(6)+""+string(0), 15)
cardHitGlobal[6, 1]=scrLoadData("cardHit"+ string(6)+""+string(1), 20)
cardHitGlobal[6, 2]=scrLoadData("cardHit"+ string(6)+""+string(2), 25)
cardHitGlobal[6, 3]=scrLoadData("cardHit"+ string(6)+""+string(3), 30)
cardHitGlobal[6, 4]=scrLoadData("cardHit"+ string(6)+""+string(4), 40)

cardHitGlobal[7, 0]=scrLoadData("cardHit"+ string(7)+""+string(0), 30)
cardHitGlobal[7, 1]=scrLoadData("cardHit"+ string(7)+""+string(1), 40)
cardHitGlobal[7, 2]=scrLoadData("cardHit"+ string(7)+""+string(2), 50)
cardHitGlobal[7, 3]=scrLoadData("cardHit"+ string(7)+""+string(3), 60)
cardHitGlobal[7, 4]=scrLoadData("cardHit"+ string(7)+""+string(4), 70)

cardHitGlobal[8, 0]=scrLoadData("cardHit"+ string(8)+""+string(0), 20)
cardHitGlobal[8, 1]=scrLoadData("cardHit"+ string(8)+""+string(1), 30)
cardHitGlobal[8, 2]=scrLoadData("cardHit"+ string(8)+""+string(2), 40)
cardHitGlobal[8, 3]=scrLoadData("cardHit"+ string(8)+""+string(3), 45)
cardHitGlobal[8, 4]=scrLoadData("cardHit"+ string(8)+""+string(4), 40)

cardHitGlobal[9, 0]=scrLoadData("cardHit"+ string(9)+""+string(0), 20)
cardHitGlobal[9, 1]=scrLoadData("cardHit"+ string(9)+""+string(1), 25)
cardHitGlobal[9, 2]=scrLoadData("cardHit"+ string(9)+""+string(2), 30)
cardHitGlobal[9, 3]=scrLoadData("cardHit"+ string(9)+""+string(3), 0)
cardHitGlobal[9, 4]=scrLoadData("cardHit"+ string(9)+""+string(4), 100)

cardHitGlobal[10, 0]=scrLoadData("cardHit"+ string(10)+""+string(0), 40)
cardHitGlobal[10, 1]=scrLoadData("cardHit"+ string(10)+""+string(1), 30)
cardHitGlobal[10, 2]=scrLoadData("cardHit"+ string(10)+""+string(2), 0)
cardHitGlobal[10, 3]=scrLoadData("cardHit"+ string(10)+""+string(3), 0)
cardHitGlobal[10, 4]=scrLoadData("cardHit"+ string(10)+""+string(4), 50)

for (b=0; b<5; b+=1)
{
    for (i=0; i<=maxChamp; i+=1)
    {
        cardHitDefault[i, b]=cardHitGlobal[i, b]
    }
}


Healthy[0, 1]=900
Healthy[1, 1]=350
Healthy[2, 1]=600
Healthy[3, 1]=450
Healthy[4, 1]=425
Healthy[5, 1]=400
Healthy[6, 1]=500
Healthy[7, 1]=450
Healthy[8, 1]=500
Healthy[9, 1]=1000
Healthy[10, 1]=650

Healthy[0, 0]=scrLoadData("Healthy"+string(0), 900)
Healthy[1, 0]=scrLoadData("Healthy"+string(1), 350)
Healthy[2, 0]=scrLoadData("Healthy"+string(2), 600)
Healthy[3, 0]=scrLoadData("Healthy"+string(3), 450)
Healthy[4, 0]=scrLoadData("Healthy"+string(4), 425)
Healthy[5, 0]=scrLoadData("Healthy"+string(5), 400)
Healthy[6, 0]=scrLoadData("Healthy"+string(6), 500)
Healthy[7, 0]=scrLoadData("Healthy"+string(7), 450)
Healthy[8, 0]=scrLoadData("Healthy"+string(8), 500)
Healthy[9, 0]=scrLoadData("Healthy"+string(9), 1000)
Healthy[10, 0]=scrLoadData("Healthy"+string(10), 650)

cardCost[0, 0]=50
cardCost[0, 1]=75
cardCost[0, 2]=100
cardCost[0, 3]=35
cardCost[0, 4]=100

cardCost[1, 0]=25
cardCost[1, 1]=75
cardCost[1, 2]=120
cardCost[1, 3]=250
cardCost[1, 4]=200

cardCost[2, 0]=50
cardCost[2, 1]=75
cardCost[2, 2]=100
cardCost[2, 3]=35
cardCost[2, 4]=100

cardCost[3, 0]=50
cardCost[3, 1]=75
cardCost[3, 2]=100
cardCost[3, 3]=35
cardCost[3, 4]=100

cardCost[4, 0]=50
cardCost[4, 1]=75
cardCost[4, 2]=100
cardCost[4, 3]=35
cardCost[4, 4]=100

cardCost[5, 0]=50
cardCost[5, 1]=75
cardCost[5, 2]=100
cardCost[5, 3]=35
cardCost[5, 4]=100

cardCost[6, 0]=50
cardCost[6, 1]=75
cardCost[6, 2]=100
cardCost[6, 3]=35
cardCost[6, 4]=100

cardCost[7, 0]=50
cardCost[7, 1]=75
cardCost[7, 2]=100
cardCost[7, 3]=35
cardCost[7, 4]=100

cardCost[8, 0]=50
cardCost[8, 1]=75
cardCost[8, 2]=100
cardCost[8, 3]=35
cardCost[8, 4]=100
