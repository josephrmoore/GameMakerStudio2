if instance_exists(obMission) and y!=ystart {
    alarm[1]=1;
}

if !instance_exists(obMission) and !instance_exists(obOverview) && !instance_exists(obDrawSpellAssign) && !instance_exists(obBlack) {
           
   scrPlayStickAudio()
   
   image_index=1;
   
   depth=-12
   
   instance_create(room_width/2, room_height/2, obBlack);
   
   instance_create(room_width/2, room_height/2, obMission)
   instance_create(room_width/2+500, 100, obClose);
   type=1
   
   for (i=0; i<2; i+=1)
    {
        iD=instance_create(room_width/2-230+530*i, 100, obMissionNext)
        iD.type=i
    }
   
   y+=400
    
}

