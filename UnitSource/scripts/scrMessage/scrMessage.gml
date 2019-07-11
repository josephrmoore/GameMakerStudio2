if !instance_exists(obMessage) {
    iD=instance_create(-100, -100, obMessage)
    iD.type=argument0
    iD.mode=argument1
    
} else {
  with obMessage alpha=1
  iD=instance_create(-100, -100, obMessage)
  iD.type=argument0
  iD.mode=argument1
}
