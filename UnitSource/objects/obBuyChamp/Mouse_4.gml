if Ruby>=champCost[Champion] {
    Ruby-=champCost[Champion]
    scrSaveData("Ruby", Ruby)
    audio_play_sound(fxStar3, 1, 0)
} else scrMessage("Not enough Ruby", 0)

