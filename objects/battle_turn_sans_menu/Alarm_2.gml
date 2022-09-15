var len = 550
var dir = 0
repeat (60)
{
    bone = instance_create_depth((320 + lengthdir_x(len, dir)), (240 + lengthdir_y(len, dir)), 0, battle_bullet_bone_menu_2)
    bone.dir = dir
    bone.len = len
    bone.image_angle = dir
    dir += 6
}
