with obPlay { depth=-7 playCount=-1 x=xstart y=ystart }

with obGameMenu instance_destroy()

if Victory=1 and helperArrow=0 {
   with obArrow { object=6 event_user(0) }
}
if Victory=0 {
   with obArrow { object=0 event_user(0) }
}

if Victory=1 and helperArrow {
   with obArrow { object=0 event_user(0) }
}


