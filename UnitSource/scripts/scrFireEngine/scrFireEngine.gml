scrMenu()

application_surface_enable(0)

randomize()

//if achievement_available() achievement_login()

globalvar fonMenu Burn blackUnit whiteUnit redUnit greenUnit Critical starMission playeriD
    Reward Victory dropRate questCount showBowReflect lobbyList Search menuColor screenSurface
    Core Audio Sound enemyCount Music maxCards missionMax Ruby creatureChest creatureChestCost
    cardBought gameEnd gameTime Round Enable helpText lobbyOwn missionWin weaponCost weaponDetail
    cardSelect Timeleft spellType cardPos Level creatureShard missionReach Mission armorCost armorDetail
    Quest champOwned gameTime Healthy roundDefeat cardOwned bodyType roundVictory Help helpMade dailyLogin
    roundWon CmaxSpells Key saveSpell getKey arControls cardType missionType Begin cardCost
    cardName stickName Shard maxMission helperArrow Champion maxChamp gameSave bodyParts controlKey
    cardSpec creatureKind Achievement cloudActive champCost Disable Lobby LobbyiD socketiD
    Mode cardAcitve partLimit matchDuring Name Champs Multiplayer arcadeMode;
    
Audio=1
Sound=1
Music=scrLoadData("Music", 1)

screenSurface=surface_create(room_width, room_height)

controlKey[0]=vk_right
controlKey[1]=vk_left
controlKey[2]=vk_up
controlKey[3]=vk_down
controlKey[4]=vk_control

arcadeMode=0

menuColor=c_white
missionWin=0
Search=0
lobbyOwn=-1
socketiD=-1
Lobby=0
Champs=0
fonMenu=foMenu
isSelect=0;
playeriD=-1
questCount=0
showBowReflect=3
cloudActive=0
roundWon=0
helperArrow=0
enemyCount=0
Enable=0

helpText[0]="Welcome to Burn Unit"
helpText[1]="You are the one on the right"
helpText[2]="Tap the buttons"
helpText[3]=""
helpText[4]=""

Round=0
maxChamp=10

maxMission=17
missionMax=17

roundDefeat=0
roundVictory=0

gameTime=0

cardPos=0;
maxCards=3;
Disable=1

Mode[0]=1

Burn=0;

creatureChestCost=1250;
for (i=0; i<50; i++) { creatureShard[i, 0]=0 cardOwned[i]=scrLoadData("cardOwned"+string(i), 5) }

scrVariables()

cardSelect=3;

auCreated=0;

Version=1

globalvar maxXP fakeBurn missionCount;

for (i=0; i<4; i+=1)
{
    Mission[i, 1]=scrLoadData("missionCount"+"0"+string(i), 0)
}

for (i=0; i<5; i+=1)
{
    cardBought[0, i]=scrLoadData("cardBought"+"0"+string(i), 1)
    cardBought[1, i]=scrLoadData("cardBought"+"1"+string(i), 1)
    cardBought[2, i]=scrLoadData("cardBought"+"2"+string(i), 1)
    cardBought[3, i]=scrLoadData("cardBought"+"3"+string(i), 1)
    cardBought[4, i]=scrLoadData("cardBought"+"4"+string(i), 1)
    cardBought[5, i]=scrLoadData("cardBought"+"5"+string(i), 1)
    cardBought[6, i]=scrLoadData("cardBought"+"6"+string(i), 1)
    cardBought[7, i]=scrLoadData("cardBought"+"7"+string(i), 1)
    cardBought[8, i]=scrLoadData("cardBought"+"8"+string(i), 1)
    cardBought[9, i]=scrLoadData("cardBought"+"9"+string(i), 1)
    cardBought[10, i]=scrLoadData("cardBought"+"10"+string(i), 1)
    cardBought[11, i]=scrLoadData("cardBought"+"11"+string(i), 1)
    cardBought[12, i]=scrLoadData("cardBought"+"12"+string(i), 1)
    cardBought[13, i]=scrLoadData("cardBought"+"13"+string(i), 1)
    cardBought[14, i]=scrLoadData("cardBought"+"14"+string(i), 1)
    cardBought[15, i]=scrLoadData("cardBought"+"15"+string(i), 1)
    cardBought[16, i]=scrLoadData("cardBought"+"16"+string(i), 1)
    cardBought[17, i]=scrLoadData("cardBought"+"17"+string(i), 1)
    cardBought[18, i]=scrLoadData("cardBought"+"18"+string(i), 1)
}

missionType=scrLoadData("missionType", 0)

for (i=0; i<=maxMission+1; i+=1)
{
    starMission[i]=scrLoadData("missionStar"+string(i), 0)
    champOwned[i]=scrLoadData("champOwned"+string(i), 0)
}

for (i=0; i<200; i+=1)
{
    Achievement[0, i]=scrLoadData("Achievement"+""+string(i), 0);
}

for (i=0; i<=maxChamp; i+=1)
{
    CmaxSpells[i]=scrLoadData("CmaxSpells"+string(i), 5)
}
for (b=0; b<=maxChamp; b+=1)
{
    for (i=0; i<5; i+=1)
    {
     Shard[b, i]=scrLoadData("Shard"+string(b)+""+string(i), 0);
    }
}
 
for (i=0; i<=100; i+=1)
{
    for (b=0; b<5; b+=1)
     {
         cardAcitve[i, b]=scrLoadData("cardAcitve"+string(i)+string(b), 1)
     }
  
}

scrAudioLines()
scrTrophy()
scrShard()

if Music audio_play_sound(audioMusic[0], 2, 1)

if os_type=browser_not_a_browser
{
    dailyLogin=scrLoadData("dailyLogin", 0)
    
    checkTime=scrLoadData("currentDate", date_current_datetime())
    
    checkLogin=date_compare_date(checkTime, date_current_datetime())
    
    if checkLogin=-1 dailyLogin=0
    
    if dailyLogin=0 {
       scrSaveData("currentDate", date_current_datetime())
       dailyLogin=1
       scrSaveData("dailyLogin", dailyLogin)
       scrQuestCreate(0)
    }
}
