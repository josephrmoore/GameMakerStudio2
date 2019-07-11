if type=1 { if missionType<missionMax missionType++  } else { if missionType>0 missionType-- }

with obStar instance_destroy()
with obArrow instance_destroy()

for (i=1; i<4; i+=1)
{
    iD=instance_create(room_width/2-105*1.65+105*i, 100, obStar)
    iD.type=i
    with iD event_user(0)
}

scrSaveData("missionType", missionType)

scrPlayStickAudio()

