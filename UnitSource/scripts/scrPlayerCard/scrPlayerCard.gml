painReflect=0

if playerType=0 Health=Healthy[Hero, 0] else Health=Healthy[Hero, 1]

hp=Health
maxHP=Health

if helpMade=0 and playerType=0 {
   for (i=0; i<5; i+=1) { cardHit[Hero, i]=cardHitGlobal[Hero, i]*3 }
}

if helpMade=1 and playerType=0 {
   for (i=0; i<5; i+=1) { cardHit[Hero, i]=cardHitGlobal[Hero, i] }
}  

if missionType=7 and playerType=1 {
   for (i=0; i<5; i+=1) { cardHit[Hero, i]=cardHitDefault[Hero, i]*3 }
}

if helpMade=1 and playerType=1 {
   for (i=0; i<5; i+=1) { cardHit[Hero, i]=cardHitGlobal[Hero, i] }
}

if (Victory=0 or Victory=1) and playerType=1 {
   for (i=0; i<5; i+=1)
   {
       cardHit[Hero, i]=cardHitDefault[Hero, i]/8
   }
} 

for (i=0; i<5; i+=1)
{
    if cardHit[Hero, i]=0 cardCharge[Hero, i]=0.0035 else cardCharge[Hero, i]=0.01
}

if Hero = 6
{
    cardCharge[Hero, 0]=0.005
    cardCharge[Hero, 1]=0.003
    cardCharge[Hero, 2]=0.0025
    cardCharge[Hero, 3]=0.0015
    cardCharge[Hero, 4]=0.001
}

if Hero = 7
{
    cardCharge[Hero, 0]=0.1
    cardCharge[Hero, 1]=0.01
    cardCharge[Hero, 2]=0.0025
    cardCharge[Hero, 3]=0.0015
    cardCharge[Hero, 4]=0.001
}

if Hero = 8
{
    cardCharge[Hero, 0]=0.1
    cardCharge[Hero, 1]=0.01
    cardCharge[Hero, 2]=0.0085
    cardCharge[Hero, 3]=0.0075
    cardCharge[Hero, 4]=0.005
}

for (i=0; i<=maxChamp; i+=1)
{
    cardPower[i, 0]=1
    cardPower[i, 1]=1
    cardPower[i, 2]=1
    cardPower[i, 3]=1
    cardPower[i, 4]=1
    cardPower[i, 5]=1
    
    cardUsed[i, 0]=0
    cardUsed[i, 1]=0
    cardUsed[i, 2]=0
    cardUsed[i, 3]=0
    cardUsed[i, 4]=0
    cardUsed[i, 5]=0
    
    cardMax[i, 0]=cardPower[i, 0]
    cardMax[i, 1]=cardPower[i, 1]
    cardMax[i, 2]=cardPower[i, 2]
    cardMax[i, 3]=cardPower[i, 3]
    cardMax[i, 4]=cardPower[i, 4]
    cardMax[i, 5]=cardPower[i, 5]
    
}
