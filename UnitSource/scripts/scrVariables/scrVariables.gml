globalvar cardMain cardEmpire questReward questSpec Cookie colorBlend missionReward;

missionReward[0]=50
missionReward[1]=40
missionReward[2]=45
missionReward[3]=50
missionReward[4]=100
missionReward[5]=150
missionReward[6]=125
missionReward[7]=100
missionReward[8]=150
missionReward[9]=150
missionReward[10]=450
missionReward[11]=300
missionReward[12]=350
missionReward[13]=200
missionReward[14]=250
missionReward[15]=150
missionReward[16]=200
missionReward[17]=300

for (i=0; i<15; i+=1)
{
    weaponDetail[0, i]=scrLoadData("weaponDetail"+string(i), 0)
}

weaponDetail[1, 0]="Makes 3 clones of yourself"
weaponDetail[1, 1]="Removes cooldown for 10 hits"
weaponDetail[1, 2]="Increase damage by 20 for 10 hits"
weaponDetail[1, 3]="Resist stuns for 10 hits"
weaponDetail[1, 4]="Resist stuns for 20 hits"
weaponDetail[1, 5]="Increase your Health by 50%"
weaponDetail[1, 6]="Increase your Health by 75%"
weaponDetail[1, 7]="Increase damage by 40 for 10 hits"
weaponDetail[1, 8]="Your attacks does vemon for 10 hits"
weaponDetail[1, 9]="Increase your Health by 100%"
weaponDetail[1, 10]="Remove the cooldown for 25 hits"
weaponDetail[1, 11]="Your attacks burn for 10 hits"
weaponDetail[1, 12]="Your attacks does cold for 10 hits"
weaponDetail[1, 13]="Your attacks does heavy venom for 10 hits"

weaponDetail[2, 0]=1000
weaponDetail[2, 1]=1200
weaponDetail[2, 2]=2000
weaponDetail[2, 3]=800
weaponDetail[2, 4]=1200
weaponDetail[2, 5]=1000
weaponDetail[2, 6]=1100
weaponDetail[2, 7]=1500
weaponDetail[2, 8]=1400
weaponDetail[2, 9]=1500
weaponDetail[2, 10]=1800
weaponDetail[2, 11]=900
weaponDetail[2, 12]=1000
weaponDetail[2, 13]=2000

questReward=ds_list_create()
questSpec=ds_list_create()

Mission[0, 0]=@"Shadownazi has been stealing hearts since the
    beginning of time making himself innocent while
    using shields to take less attacks hits.
    
    Mission 1 - Defeat Shadownazi"


Mission[1, 0]=@"Peasants tried to defend their village from Goblin many
    times with failure, Unfortunately he gets stronger
    each time they try.
    
    Mission 2 - Defeat Goblin"

Mission[2, 0]=@"Skeleton was fighting with team fighter until a boiling
    love struck his hand, before then he was fighting
    for team fighter, then he joined team mutant to
    defeat any fighter who f**ked his hand.
    
    Mission 3 - Defeat Skeleton"

Mission[3, 0]=@"Deadshot is highly trained archer with fire and posioned bow, 
    she has been hunting bad guys for many decades, they couldn't
    catch her they are mad about her massive archery speed.
    
    Mission 4 - Defeat Deadshot"

Mission[4, 0]=@"Shadownazi and Skeleton were resurrected by Bight
    they cooperated to defeat you and Crusader.
    
    Mission 5 - Crusader's daughters"

Mission[5, 0]=@"Bight was mad at their fight and decided to bring
    justice 1 day later he resurrected everyone to
    kill you and Crusader.
    
    Mission 6 - Crusader's call"

Mission[6, 0]=@"Bight resurrected you because she was jealous
    of your attacking moves and decided to prove herself worthy.
    
    Mission 7 - Defeat Bight"

Mission[7, 0]=@"Bight resurrected Deadshot to the evil side
    and started hunting good guys.
    
    Mission 8 - Defeat Deadshot"

Mission[8, 0]=@"Team of two saw you shopping and
    decided kill you.
    
    Mission 9 - Defeat Deadshot and Goblin"

Mission[9, 0]=@"Team of three sneaked to your house
    and decided to kill you.
    
    Mission 10 - Defeat Deadshot, Goblin and Shadownazi"

Mission[10, 0]=@"Jeato cloned three evil copies of Crusader.
    
    Mission 11 - Defeat Crusader clones"
    
Mission[11, 0]=@"Jeato cloned two evil copies of Goblin.
    
    Mission 12 - Defeat Goblin clones"
    
Mission[12, 0]=@"Jeato cloned three evil copies of Goblin.
    
    Mission 13 - Defeat Goblin clones"
    
Mission[13, 0]=@"Reaper can't live without reaping creatures,
    he gains health for each reap he does, sadly he has to
    die for good, he has killed many innocents.
    
    Mission 14 - Defeat Reaper"
    
Mission[14, 0]=@"Reaper was resurrected by Bight, and cooperated with
    Goblin to ruin villages.
    
    Mission 15 - Defeat Reaper and Goblin"
    
Mission[15, 0]=@"Apple boy didn't do anything bad but your mission
    is stop him from throwing apples at people.
    
    Mission 16 - Defeat Apple Boy"
    
Mission[16, 0]=@"You passed through Dracula he wanted to
    kill you and and drink your blood for living.
    
    Mission 17 - Defeat Dracula"
    
Mission[17, 0]=@"Apple boy and Dracula could not defeat you so
    they settled to battle you.
    
    Mission 18 - Defeat Dracula and Apple Boy"
    
//for (i=0; i<=missionMax; i+=1) { Mission[0, i]=0 }

for (b=0; b<=missionMax; b+=1)
{
    for (i=0; i<5; i+=1) { cardAcitve[b, i]=1 }
}

for (i=0; i<=maxChamp; i+=1)
{
    champCost[i]=7500
}

cardMain[0]=spFace_00
cardMain[1]=spFace_01
cardMain[2]=spFace_02
cardMain[3]=spFace_03
cardMain[4]=spFace_04
cardMain[5]=spFace_05
cardMain[6]=spFace_06
cardMain[7]=spFace_07
cardMain[8]=spFace_08

cardEmpire[0]=2
cardEmpire[1]=1
cardEmpire[2]=2
cardEmpire[3]=0
cardEmpire[4]=1
cardEmpire[5]=0
cardEmpire[6]=2
cardEmpire[7]=0
cardEmpire[8]=2
cardEmpire[9]=0

for (i=0; i<=maxChamp; i+=1)
{    
    colorBlend[i]=c_white
}

//STICKHUG
stickName[0]="Shadownazi"
Critical[0, 0]=0
Critical[0, 1]=100

creatureKind[0, 0]="Mutant"

cardType[0, 0]="Balanced";
cardType[0, 1]="Weak + Trick";
cardType[0, 2]="Trick";
cardType[0, 3]="Strong";
cardType[0, 4]="Trick";

cardSpec[0, 0]="Medium damage";
cardSpec[0, 1]="Decrease damage#taken by half";
cardSpec[0, 2]="Resist speed#Reduce damage";
cardSpec[0, 3]="Medium damage";
cardSpec[0, 4]="Drops opponent's#health";

cardName[0, 0]="Sharpstick";
cardName[0, 1]="Stickup";
cardName[0, 2]="Shadownazi";
cardName[0, 3]="Awayknife";
cardName[0, 4]="Heartbandit";

spellType[0, 0]=spAttack00_00;
spellType[0, 1]=spAttack01_00;
spellType[0, 2]=spAttack02_00;
spellType[0, 3]=spAttack03_00;
spellType[0, 4]=spAttack04_00;

//Stickyhorn
stickName[1]="Goblin"
Critical[1, 0]=0
Critical[1, 1]=100

creatureKind[1, 0]="Mage"

cardType[1, 0]="Weak";
cardType[1, 1]="Trick";
cardType[1, 2]="Balanced";
cardType[1, 3]="Strong";
cardType[1, 4]="Strong";

cardSpec[1, 0]="Low damage";
cardSpec[1, 1]="Copycat the#opponent ";
cardSpec[1, 2]="Spawn a Dino";
cardSpec[1, 3]="Spawn a bug#from above";
cardSpec[1, 4]="Spawn a frog";

cardName[1, 0]="Throwhorn";
cardName[1, 1]="Copycat";
cardName[1, 2]="Lost Dino";
cardName[1, 3]="Demonspawn";
cardName[1, 4]="Botspawn";

spellType[1, 0]=spAttack00_01;
spellType[1, 1]=spAttack01_01;
spellType[1, 2]=spAttack02_01;
spellType[1, 3]=spAttack03_01;
spellType[1, 4]=spAttack04_01;

//Struckhand
stickName[2]="Skeleton"
Critical[2, 0]=0
Critical[2, 1]=100

creatureKind[2, 0]="Mutant"

cardType[2, 0]="Balanced";
cardType[2, 1]="Trick";
cardType[2, 2]="Trick";
cardType[2, 3]="Strong";
cardType[2, 4]="Trick";

cardSpec[2, 0]="Low damage";
cardSpec[2, 1]="Return any#attack taken";
cardSpec[2, 2]="Summon a Turtle";
cardSpec[2, 3]="Rush quickly#forward";
cardSpec[2, 4]="Increase damage#made"

cardName[2, 0]="Flithyhand";
cardName[2, 1]="Painme";
cardName[2, 2]="Turtlefrend";
cardName[2, 3]="Handlust";
cardName[2, 4]="Hornyhand";

spellType[2, 0]=spAttack00_02
spellType[2, 1]=spAttack01_02;
spellType[2, 2]=spAttack02_02;
spellType[2, 3]=spAttack03_02;
spellType[2, 4]=spAttack04_02;

//Showbow
stickName[3]="Deadshot"
Critical[3, 0]=0
Critical[3, 1]=100

creatureKind[3, 0]="Fighter"

cardType[3, 0]="Balanced";
cardType[3, 1]="Trick";
cardType[3, 2]="Trick";
cardType[3, 3]="Strong";
cardType[3, 4]="Trick";

cardSpec[3, 0]="Release a arrow";
cardSpec[3, 1]="High speed#bow attack";
cardSpec[3, 2]="Fire arrow";
cardSpec[3, 3]="Poison arrow";
cardSpec[3, 4]="Prevent 5#incoming attacks"

cardName[3, 0]="Eyebow";
cardName[3, 1]="Bowspeed";
cardName[3, 2]="Firearrow";
cardName[3, 3]="Poisonedbow";
cardName[3, 4]="Contained";

spellType[3, 0]=spAttack00_03
spellType[3, 1]=spAttack01_03
spellType[3, 2]=spAttack02_03
spellType[3, 3]=spAttack03_03
spellType[3, 4]=spAttack04_03

//Sticklight
stickName[4]="Bight"
Critical[4, 0]=0
Critical[4, 1]=100

creatureKind[4, 0]="Mage"

cardType[4, 0]="Balanced";
cardType[4, 1]="Trick";
cardType[4, 2]="Trick";
cardType[4, 3]="Strong";
cardType[4, 4]="Trick";

cardSpec[4, 0]="Beam rush";
cardSpec[4, 1]="Lightbeam rush";
cardSpec[4, 2]="Spawn a death#guardian";
cardSpec[4, 3]="Heal upon#critical attack";
cardSpec[4, 4]="Wing release"

cardName[4, 0]="Bluebeam";
cardName[4, 1]="Lightbeam";
cardName[4, 2]="DeathGuardian";
cardName[4, 3]="Heartup";
cardName[4, 4]="DeathWing";

spellType[4, 0]=spAttack00_04
spellType[4, 1]=spAttack00_04
spellType[4, 2]=spAttack01_04
spellType[4, 3]=spAttack02_04
spellType[4, 4]=spAttack04_04

//Normie
stickName[5]="Crusader"
Critical[5, 0]=0
Critical[5, 1]=100

creatureKind[5, 0]="Fighter"

cardType[5, 0]="Balanced";
cardType[5, 1]="Trick";
cardType[5, 2]="Trick";
cardType[5, 3]="Strong";
cardType[5, 4]="Trick";

cardSpec[5, 0]="Punchs";
cardSpec[5, 1]="Stabs";
cardSpec[5, 2]="Drags backward";
cardSpec[5, 3]="Summon knife#from above";
cardSpec[5, 4]="Summon Crusader's#daughters"

cardName[5, 0]="Highpunch";
cardName[5, 1]="Stabstab";
cardName[5, 2]="Backdrag";
cardName[5, 3]="Knifetrigger";
cardName[5, 4]="Billies";

spellType[5, 0]=spAttack00_05
spellType[5, 1]=spAttack01_05
spellType[5, 2]=spAttack02_05
spellType[5, 3]=spAttack03_05
spellType[5, 4]=spRun_05

//Reaper
stickName[6]="Reaper"
Critical[6, 0]=0
Critical[6, 1]=100

creatureKind[6, 0]="Mutant"

cardSpec[6, 0]="Reap once"
cardSpec[6, 1]="Reap twice"
cardSpec[6, 2]="Reap three times"
cardSpec[6, 3]="Reap four times"
cardSpec[6, 4]="Reap five times"

spellType[6, 0]=spAttack_06
spellType[6, 1]=spAttack_06
spellType[6, 2]=spAttack_06
spellType[6, 3]=spAttack_06
spellType[6, 4]=spAttack_06

//Apple
stickName[7]="Apple Boy"
Critical[7, 0]=0
Critical[7, 1]=100

creatureKind[7, 0]="Fighter"

for (i=0; i<5; i+=1) { cardAcitve[7, i]=0 }

cardSpec[7, 0]="Throw a apple"
cardSpec[7, 1]="Punch"
cardSpec[7, 2]="Punch harder"
cardSpec[7, 3]="Punch even harder"
cardSpec[7, 4]="Punch even #even harder"

spellType[7, 0]=spAttack00_07
spellType[7, 1]=spAttack01_07
spellType[7, 2]=spAttack01_07
spellType[7, 3]=spAttack01_07
spellType[7, 4]=spAttack01_07

//Dracula
stickName[8]="Dracula"
Critical[8, 0]=0
Critical[8, 1]=100

creatureKind[8, 0]="Mutant"

cardSpec[8, 0]="Release bats"
cardSpec[8, 1]="Release more bats"
cardSpec[8, 2]="Release more#more bats"
cardSpec[8, 3]="Release even#more bats"
cardSpec[8, 4]="Release even#more more bats"

spellType[8, 0]=spAttack_08
spellType[8, 1]=spAttack_08
spellType[8, 2]=spAttack_08
spellType[8, 3]=spAttack_08
spellType[8, 4]=spAttack_08

//Viking
stickName[9]="Viking"
Critical[9, 0]=0
Critical[9, 1]=100

creatureKind[9, 0]="Fighter"

cardSpec[9, 0]="Sword attack"
cardSpec[9, 1]="Reflect a attack#for each fourth hit"
cardSpec[9, 2]="Attack 3 in a#row quickly"
cardSpec[9, 3]="Resist attack#Resist damage"
cardSpec[9, 4]="Severe sword#attack"

//Jeato
stickName[10]="Jeato"
Critical[10, 0]=0
Critical[10, 1]=100

creatureKind[10, 0]="Fighter"

cardSpec[10, 0]="Sword attack"
cardSpec[10, 1]="Sword rush"
cardSpec[10, 2]="50% chance to do#critical damage"
cardSpec[10, 3]="Chance to summon#clones of yourself"
cardSpec[10, 4]="Severe sword#rush"
