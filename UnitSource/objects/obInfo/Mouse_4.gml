with obArrow instance_destroy()
if !instance_exists(obMission) and !instance_exists(obOverview) && !instance_exists(obBlack) {
    iD=instance_create(room_width/2, room_height/2, obOverview);
    iD.Type=0;
    image_index=1;
    instance_create(room_width/2, room_height/2, obBlack);
    instance_create(room_width/2+500, 100, obClose);
    
}

