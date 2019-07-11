count++
if count>50 image_alpha-=0.075

if count=100 {
   if Sound audio_play_sound(fxPrepare, 10, 0)
}

if image_alpha<=0 {
    instance_destroy()
}

if !remove image_alpha+=.1


