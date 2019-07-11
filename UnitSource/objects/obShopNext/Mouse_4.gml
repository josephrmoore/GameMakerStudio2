if type
{
   if shopCount<2 shopCount++
}
 else
{
   if shopCount>0 shopCount--
}

if shopCount=1
{
    for (i=0; i<20; i+=1) { shopValueX[i]=0 }
    
    with obItems instance_destroy()
    
    for (i=0; i<8; i+=1)
    {
        shopValueX[0]++
        iD=instance_create(140*shopValueX[0], 250, obItems)
        iD.type=i
        iD.mode=1
        iD.sprite_index=spArmor00
    }
}

if shopCount=0
{
    for (i=0; i<20; i+=1) { shopValueX[i]=0 }
    
    with obItems instance_destroy()
    
    for (i=0; i<8; i+=1)
    {
        shopValueX[0]++
        iD=instance_create(140*shopValueX[0], 250, obItems)
        iD.type=i
        iD.mode=0
        iD.sprite_index=spWeapon00
    }
    
    for (i=8; i<14; i+=1)
    {
        shopValueX[1]++
        iD=instance_create(140*shopValueX[1], 390, obItems)
        iD.type=i
        iD.mode=0
        iD.sprite_index=spWeapon00
    }
}

