image_index=type

if image_index=1 { if missionReach>missionType image_alpha=1 else image_alpha=0 }
if image_index=0 { if missionType<=0 image_alpha=0 else image_alpha=1 }

image_alpha=obClose.image_alpha

