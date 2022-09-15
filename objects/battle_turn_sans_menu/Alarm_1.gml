if (_menu == 0)
{
    alarm[1] = 40
    bone = instance_create_depth((battle_button_fight.x + 85), 540, 0, battle_bullet_bone_menu_1)
    bone.hspeed = -3
    bone.alarm[1] = 150
    Anim_Create(bone, "y", 1, 1, 540, -80, 13.333333333333334)
    Anim_Create(bone, "y", 1, 1, 460, 80, 30, 51.333333333333336)
    bone = instance_create_depth((battle_button_item.x + 85), 540, 0, battle_bullet_bone_menu_1)
    bone.hspeed = -3
    bone.alarm[1] = 150
    Anim_Create(bone, "y", 1, 1, 540, -80, 13.333333333333334)
    Anim_Create(bone, "y", 1, 1, 460, 80, 30, 51.333333333333336)
    _menu = 1
}
else if (_menu == 1)
{
    alarm[1] = 40
    _menu = 0
    bone = instance_create_depth((battle_button_act.x + 85), 540, 0, battle_bullet_bone_menu_1)
    bone.hspeed = -3
    bone.alarm[1] = 150
    Anim_Create(bone, "y", 1, 1, 540, -80, 13.333333333333334)
    Anim_Create(bone, "y", 1, 1, 460, 80, 30, 51.333333333333336)
    bone = instance_create_depth((battle_button_mercy.x + 85), 540, 0, battle_bullet_bone_menu_1)
    bone.hspeed = -3
    bone.alarm[1] = 150
    Anim_Create(bone, "y", 1, 1, 540, -80, 13.333333333333334)
    Anim_Create(bone, "y", 1, 1, 460, 80, 30, 51.333333333333336)
}
