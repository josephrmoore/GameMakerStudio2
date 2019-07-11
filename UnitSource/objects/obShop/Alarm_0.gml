if !instance_exists(obBlack) && !instance_exists(obOverview) {
    instance_create(room_width/2, room_height/2, obBlack)
    instance_create(room_width/2+500, 100, obClose)
}

iD=instance_create(room_width/2, room_height/2, obOverview)
iD.Type=1;

for (i=0; i<2; i+=1)
{
    iD=instance_create(room_width/2-230+530*i, 100, obShopNext)
    iD.type=i
}

for (i=0; i<20; i+=1) { shopValueX[i]=0 }
    
    with obOpenPortal instance_destroy()
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

