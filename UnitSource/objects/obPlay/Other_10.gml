if !instance_exists(obMission) and !instance_exists(obOverview) && !instance_exists(obDrawSpellAssign) && !instance_exists(obBlack) {
       for (i=1; i<4; i+=1)
       {
           iD=instance_create(room_width/2-105*1.65+105*i, 100, obStar);
           iD.type=i
           with iD event_user(0)
       }
        
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
       depth=-14
}

alarm[3]=10

