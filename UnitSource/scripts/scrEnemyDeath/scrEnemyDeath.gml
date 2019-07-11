if roundVictory>=2 {

     if Achievement[0, 35]=0 and missionType=5 {
        scrQuestCreate(35)
    }
    
    if (gameTime/room_speed)>=20 and starMission[missionType]<=1 starMission[missionType]=1
    if (gameTime/room_speed)>10 and (gameTime/room_speed)<20 and starMission[missionType]<=2 starMission[missionType]=2
    if (gameTime/room_speed)<=10 and starMission[missionType]<=3 starMission[missionType]=3
    
    scrSaveData("missionStar"+string(missionType), starMission[missionType])
    
    Wins++
    scrSaveData("Wins", Wins)
   
    totalMatch++
    scrSaveData("totalMatch", totalMatch)
    
    Ruby+=(missionReward[missionType])*starMission[missionType]
    scrSaveData("Ruby", Ruby)
    
    if Cookie>0 Cookie--
    scrSaveData("Cookie", Cookie)
    
    with obVictory instance_destroy()
    if !instance_exists(obVictory) instance_create(-100, -100, obVictory)
}

roundWon=1

