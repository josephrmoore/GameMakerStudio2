image_index=0
image_speed=0.15

//Type=irandom(5)
/*
repeat 99 {
    if champOwned[Type] {
       Type=irandom(maxChamp)
    }
}
*/

Champs++
scrSaveData("Champs", Champs)

if creatureChest>0 creatureChest--
champOwned[Type]=1
scrSaveData("champOwned"+""+string(Type), champOwned[Type])
scrSaveData("creatureChest", creatureChest)

audio_play_sound(fxDoorOpen, 1, 0)




/* */
/*  */
