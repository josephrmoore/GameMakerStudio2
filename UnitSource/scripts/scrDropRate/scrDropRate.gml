/*if roundVictory=2 {
   if choose(30, 20, 10, 5)>=irandom(100) {
     iD=instance_create(x, y-150, obPart)
     iD.sprite_index=spPortal
     iD.image_index=0
     iD.iD=id
     iD.type=0
     
     creatureChest++
     
     scrSaveData("creatureChest", creatureChest)
     }
}
*/
/*
if roundVictory=2 {
    Wild=irandom(6)
    dropChance=(90/(Level*.35))
    if dropChance<=30 dropChance=30
    for (i=0; i<=Wild; i+=1)
    {
      if dropChance>=irandom(100) {
         Crab=irandom(3)
         iD=instance_create(x+160*i, y-140, obPart)
         iD.sprite_index=bodyType[Hero]
         iD.image_index=Crab
         iD.iD=id
         iD.type=0
         
         Shard[Hero, Crab]++

         scrSaveData("Shard"+string(Hero)+""+string(Crab), Shard[Hero, Crab])
      }
   }
}

       /*
       Wild=irandom(4)
        for (i=0; i<Wild; i+=1)
        {
           if Hero=1 {
              if dropRate[Hero, irandom(3)]<=irandom(100) {
                 Crab=irandom(3)
                 iD=instance_create(x+i*250, y, obPart)
                 iD.sprite_index=spBodypart_01
                 iD.image_index=irandom(4)
                 iD.iD=id
                 iD.type=0
                 
                 Shard[Hero, Crab]++
                 
                 scrSaveData("Shard", 1)
                 scrSaveData("Shard"+string(Hero)+""+string(Crab), Shard[Hero, Crab])
              }
           }
       }
       
        Wild=irandom(4)
        for (i=0; i<Wild; i+=1)
        {
           if Hero=2 {
              if dropRate[Hero, irandom(3)]<=irandom(100) {
                 Crab=irandom(3)
                 iD=instance_create(x+i*250, y, obPart)
                 iD.sprite_index=spBodypart_02
                 iD.image_index=Crab
                 iD.iD=id
                 iD.type=0
                 
                 Shard[Hero, Crab]++
                 
                 scrSaveData("Shard", 1)
                 scrSaveData("Shard"+string(Hero)+""+string(Crab), Shard[Hero, Crab])
              }
           }
       }
}
