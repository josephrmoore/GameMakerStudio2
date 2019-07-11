/*if cardBought[Champion, Type] {
    if cardAcitve[Champion, Type]=0 {
       if CmaxSpells[Champion]<maxCards {
           CmaxSpells[Champion]++
           cardAcitve[Champion, Type]=1
           cardOwned[Champion]--
           In=1
       }
    } else { if CmaxSpells[Champion]>0 { cardOwned[Champion]++ cardAcitve[Champion, Type]=0; In=0 CmaxSpells[Champion]--; } }


} else {
  Unlock=room_speed*3.7
  audio_play_sound(fxLocked, 1, 0)
}

if CmaxSpells=3 {
   with obArrow { object=3 event_user(0) }
   depth=-500
}
*/
//scrSaveData("cardAcitve"+string(Champion)+string(Type), cardAcitve[Champion, Type])
//scrSaveData("CmaxSpells"+string(Champion), CmaxSpells[Champion])
//scrSaveData("cardOwned"+string(Champion), cardOwned[Champion])

/* */
/*  */
