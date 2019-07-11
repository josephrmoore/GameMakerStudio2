if !instance_exists(obBlack) && !instance_exists(obOverview) {
    instance_create(room_width/2, room_height/2, obBlack);
    instance_create(room_width/2+500, 100, obClose);
    //scale=1;
}

alarm[0]=1

iD=instance_create(room_width/2, room_height/2, obOverview);
iD.Type=1;

with obArrow instance_destroy()

