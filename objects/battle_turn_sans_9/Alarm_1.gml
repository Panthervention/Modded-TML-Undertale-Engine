audio_stop_sound(snd_alert)
var xx = 0
var delay = 0
if _exclamation = 1
{
    repeat (16)
    {
        bone_bottom = MakeBoneV(165 + xx, 190, 75, 0, 0, 0, 0, 0, 0, 120)
        Anim_Create(bone_bottom, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 190, 78, 15, delay)
        Anim_Create(bone_bottom, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 265,-90, 15, (delay + 40))
        bone_top = MakeBoneV(165 + xx, 430, 75, 0, 0, 0, 0, 0, 0, 120)
        Anim_Create(bone_top, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 430,-78, 15, delay)
        Anim_Create(bone_top, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 355, 90, 15, (delay + 40))
        xx += 10
        delay += 3
    }
}
else if _exclamation = 2
{
    repeat (16)
    {
        bone_bottom = MakeBoneV(475 + xx, 190, 75, 0, 0, 0, 0, 0, 0, 120)
        Anim_Create(bone_bottom, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 190, 78, 15, delay)
        Anim_Create(bone_bottom, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 265,-90, 15, (delay + 40))
        bone_top = MakeBoneV(475 + xx, 430, 75, 0, 0, 0, 0, 0, 0, 120)
        Anim_Create(bone_top, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 430,-78, 15, delay)
        Anim_Create(bone_top, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, 355, 90, 15, (delay + 40))
        xx -= 10
        delay += 3
    }
}
alarm[4] = 1
alarm[5]= delay + 15
alarm[0] = 150