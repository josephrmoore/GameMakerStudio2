if Victory=3 and Achievement[0, 1]=0 {
   
   scrQuestCreate(1)
   
}

if Victory=5 and Achievement[0, 12]=0 {
    
   scrQuestCreate(12)
}
if Victory=10 and Achievement[0, 13]=0 {

   scrQuestCreate(13)
}
if Victory=20 and Achievement[0, 19]=0 {
    
    scrQuestCreate(19)
   
}
if Victory=25 and Achievement[0, 20]=0 {
    
   scrQuestCreate(20)
   
}
if Victory=30 and Achievement[0, 21]=0 {
    
   scrQuestCreate(21)
   
}
if Victory=40 and Achievement[0, 22]=0 {
    
   scrQuestCreate(22)
   
}
if Victory=50 and Achievement[0, 23]=0 {
    
   scrQuestCreate(23)
   
}
if Victory=60 and Achievement[0, 24]=0 {
    
   scrQuestCreate(24)
   
}
if Victory=70 and Achievement[0, 25]=0 {
    
   scrQuestCreate(25)
   
}
if instance_exists(obEnemy) {
    if instance_nearest(x, y, obEnemy).Death[0] and Achievement[0, 2]=0 and instance_nearest(x, y, obEnemy).Hero=0 {
       
       scrQuestCreate(2)
       
    }
    if instance_nearest(x, y, obEnemy).Death[0] and Achievement[0, 3]=0 and instance_nearest(x, y, obEnemy).Hero=1 {
       
       scrQuestCreate(3)
       
    }
    if instance_nearest(x, y, obEnemy).Death[0] and Achievement[0, 4]=0 and instance_nearest(x, y, obEnemy).Hero=2 {
       
       scrQuestCreate(4)
       
    }
   
    if Hero=0 and Achievement[0, 5]=0 and spellUsed[4]>=1 and Health<=100 and obEnemy.Death[0] {
       
       scrQuestCreate(5)
       
    }
}
if Hero=0 and Achievement[0, 6]=0 and spellUsed[3]>=5 {
   
   scrQuestCreate(6)
}

if Hero=1 and Achievement[0, 7]=0 and spellUsed[1]>=5 {
   
   scrQuestCreate(7)
}

if Hero=1 and Achievement[0, 8]=0 and spellUsed[4]>=5 {
   
   scrQuestCreate(8)
}

if Hero=2 and Achievement[0, 9]=0 and spellUsed[1]>=5 {
   
   scrQuestCreate(9)
}

if Hero=2 and Achievement[0, 10]=0 and spellUsed[2]>=5 {
   
   scrQuestCreate(10)
}

if Hero=8 and Achievement[0, 39]=0 and spellUsed[0]>=4 {
   
   scrQuestCreate(39)
}

if Hero=2 and Achievement[0, 11]=0 and spellUse=1 and Health<=80 and Enemy.Death[0] {
   
   scrQuestCreate(11)
   
}

if Hero=3 and Achievement[0, 27]=0 and try<=0 and spellUse=4 {

   scrQuestCreate(27)
}

if Hero=3 and Achievement[0, 28]=0 and spellUsed[1]>=5 {
   
   scrQuestCreate(28)
}

if Hero=3 and Achievement[0, 29]=0 and spellUsed[2]>=5 {
   
   scrQuestCreate(29)
}
if Hero=5 and Achievement[0, 42]=0 and spellUsed[4]>=3 {
   
   scrQuestCreate(42)
}
if Hero=5 and Achievement[0, 42]=0 and spellUsed[4]>=3 {
   
   scrQuestCreate(42)
}
if Hero=5 and Achievement[0, 43]=0 and spellUsed[2]>=3 {
   
   scrQuestCreate(43)
}
if Hero=6 and Achievement[0, 40]=0 and spellUsed[1]>=3 {
   
   scrQuestCreate(40)
}
if Hero=6 and Achievement[0, 41]=0 and spellUsed[3]>=2 {
   
   scrQuestCreate(41)
}

if Achievement[0, 14]=0 and spellUsed[1]>=3 and spellUsed[2]>=3 and spellUsed[3]>=3 {
   
   scrQuestCreate(14)
}
