with (other) {
if !instance_exists(obBlack) && !instance_exists(obOverview) {
    instance_create(room_width/2, room_height/2, obBlack);
    instance_create(room_width/2+500, 100, obClose);
}

Begin=2

instance_create(room_width/2, room_height/2+70, obHeroLab)

//instance_create(room_width/2+100, room_height/2-50+50, obRevamp)
//instance_create(room_width/2-100, room_height/2-45+50, obBuyHero)
/*
for (i=0; i<shardLimit[Champion]; i+=1)
{
    iD=instance_create(room_width/2-165+160*i-35, room_height/2+90+80-70, obSellBody);
    iD.type=i
}
*/

iD=instance_create(room_width/2, room_height/2, obOverview);
iD.Type=1;

for (i=0; i<2; i+=1)
{
    iD=instance_create(room_width/2-230+530*i, 100, obChampionNext)
    iD.type=i
}

/* */
}
/*  */
