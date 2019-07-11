if !instance_exists(obMission) and !instance_exists(obOverview) && !instance_exists(obBlack) {
    iD=instance_create(room_width/2, room_height/2, obOverview);
    iD.Type=3;
    image_index=1;
    instance_create(room_width/2, room_height/2, obBlack);
    instance_create(room_width/2+500, 100, obClose);
    
    scrSaveData("Alert", 0)
    
    for (i=0; i<2; i+=1)
    {
        iD=instance_create(room_width/2-230+530*i, 100, obTrophyNext)
        iD.type=i
        iD.Type=0
    }
}

