if type=1
{
    if Champion<maxChamp Champion++
}
else 
{
    if Champion>0 Champion--
}

with obPlay alarm[3]=1

if instance_exists(obHeroLab) {
   //with obSellBody instance_destroy()
   //with obBuyHero instance_destroy()
   /*
    for (i=0; i<shardLimit[Champion]; i+=1)
    {
        iD=instance_create(room_width/2-165+160*i-35, room_height/2+90+80-70, obSellBody);
        iD.type=i
    }
    */
    //instance_create(room_width/2-100, room_height/2-45+50, obBuyHero)
}

/* */
/*  */
