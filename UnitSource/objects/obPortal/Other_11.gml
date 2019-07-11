image_index=0
image_speed=0.15

audio_play_sound(fxDoorOpen, 1, 0)

asdf=irandom(0)

switch asdf {
   case 0:
   if creatureChest>0 creatureChest--
   scrSaveData("creatureChest", creatureChest)
    for (i=0; i<4; i+=1)
    {
         iD=instance_create(room_width/2-130+85*i, room_height/2, obParts)
         iD.Hero=irandom(maxChamp)
         iD.sprite_index=bodyType[iD.Hero]
         iD.image_index=irandom(4)
         iD.iD=id
         iD.type=0
         
         with iD event_user(0)
   }
   break
}

