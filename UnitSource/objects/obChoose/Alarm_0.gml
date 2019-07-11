if !instance_exists(obBlack) && !instance_exists(obOverview) {
    instance_create(room_width/2, room_height/2, obBlack);
    instance_create(room_width/2+500, 100, obClose);
    //scale=1;
}

Begin=2

for (i=0; i<5; i+=1)
{
    iD=instance_create(room_width/2, room_height/2, obBackSpells);
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

