Ruby+=Reward[argument0]
Achievement[0, argument0]=1

if !instance_exists(obQuest) {
    iD=instance_create(-500, -500, obQuest)
    iD.type=Achievement[1, argument0]
    iD.ward=Reward[argument0]
} else {
  with obQuest alpha=1
  iD=instance_create(-500, -500, obQuest)
  iD.type=Achievement[1, argument0]
  iD.ward=Reward[argument0]
}

scrSaveData("Victory", Victory)
scrSaveData("Ruby", Ruby)
scrSaveData("Achievement"+string(argument0), 1)
scrSaveData("Alert", 1)
scrSaveData("creatureChest", creatureChest)
