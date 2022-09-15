audio_stop_sound(snd_alert)
var xx = 0
var delay = 0
var color_1 = choose(1,2)
var color_2 = choose(1,2)
repeat (7)
{
    bone_bottom = MakeBoneV(255 + xx, 220, 65, 0, 0, color_1, 0, 0, 0, 120)
    Anim_Create(bone_bottom, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 220, 68, 15, delay)
    Anim_Create(bone_bottom, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 288,-80, 15, (delay + 40))
    bone_top = MakeBoneV(255 + xx, 420, 70, 0, 0, color_1, 0, 0, 0, 120)
    Anim_Create(bone_top, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 420,-68, 15, delay)
    Anim_Create(bone_top, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 352, 80, 15, (delay + 40))
	
    bone_bottom2 = MakeBoneV(385 - xx, 220, 65, 0, 0, color_2, 0, 0, 0, 120)
    Anim_Create(bone_bottom2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 220, 68, 15, delay)
    Anim_Create(bone_bottom2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 288,-80, 15, (delay + 40))
    bone_top2 = MakeBoneV(385 - xx, 420, 65, 0, 0, color_2, 0, 0, 0, 120)
    Anim_Create(bone_top2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 420,-68, 15, delay)
    Anim_Create(bone_top2, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 352, 80, 15, (delay + 40))
    xx += 10
    delay += 3
}
alarm[4] = 1
alarm[5] = delay + 15
alarm[3] = 120