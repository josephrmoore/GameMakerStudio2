if keyboard_check_pressed(controlKey[0]) spellUsed[0]+=1
if keyboard_check_pressed(controlKey[1]) spellUsed[1]+=1
if keyboard_check_pressed(controlKey[2]) spellUsed[2]+=1
if keyboard_check_pressed(controlKey[3]) spellUsed[3]+=1
if keyboard_check_pressed(controlKey[4]) spellUsed[4]+=1

if keyboard_check_pressed(controlKey[0]) spellUse=0
if keyboard_check_pressed(controlKey[1]) spellUse=1
if keyboard_check_pressed(controlKey[2]) spellUse=2
if keyboard_check_pressed(controlKey[3]) spellUse=3
if keyboard_check_pressed(controlKey[4]) spellUse=4

cardPower[Hero, spellUse]--
if attackSword>0 and Hero=2 attackSword--

MoveType=-1
