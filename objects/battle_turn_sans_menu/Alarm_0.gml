aim += 0.06
if ((!instance_exists(bone1)) && bone_number == 0)
{
    bone1 = instance_create_depth(-8, 282, 0, battle_bullet_bone_menu_1)
    bone_number = 1
	bone1.auto_destroy = 1
}
if instance_exists(bone1)
    bone1.x += (cos(aim) * 5)
alarm[0] = 1
