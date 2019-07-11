if roundDefeat=2 {
   
   totalMatch++
   scrSaveData("totalMatch", totalMatch)
   
   Loss++
   scrSaveData("Loss", Loss)
   
   if Cookie>0 Cookie--
   scrSaveData("Cookie", Cookie)
   
   with obVictory instance_destroy()
   if !instance_exists(obVictory) instance_create(-100, -100, obVictory)
}
