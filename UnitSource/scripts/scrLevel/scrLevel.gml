//if Enemy.Health<maxHP*0.30 and Enemy.Health>0 starMission[missionType]=1
//if Enemy.Health>maxHP*0.30 and Enemy.Health<maxHP*0.50 starMission[missionType]=2
//if Enemy.Health>maxHP*0.50 and Enemy.Health>=maxHP*1 starMission[missionType]=3

scrSaveData("maxXP", maxXP)
scrSaveData("Burn", Burn)

if missionType<missionMax scrSaveData("missionType", missionType)

scrSaveData("fakeBurn", fakeBurn)
