
    with obMission instance_destroy()
    with obMissionNext instance_destroy()
    with obStar instance_destroy()
    
    x=room_width/2
    depth=-600
    
    if !instance_exists(obBlack) && !instance_exists(obOverview) {
        instance_create(room_width/2, room_height/2, obBlack);
        instance_create(room_width/2+500, 100, obClose);
        //scale=1;
    }
    
    for (i=0; i<5; i+=1)
    {
        iD=instance_create(room_width/2, room_height/2-125, obBackSpells);
        iD.x=200+i*(220);
        iD.Type=i;
    }
    
    iD=instance_create(room_width/2, room_height/2, obOverview);
    iD.Type=1;
    
    for (i=0; i<2; i+=1)
    {
        iD=instance_create(room_width/2-230+530*i, 75, obChampionNext)
        iD.type=i
    }
    
    alarm[3]=10

