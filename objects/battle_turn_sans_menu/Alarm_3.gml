alarm[3] = 60
var xx = choose((battle_button_fight.x), (battle_button_act.x ), (battle_button_item.x), (battle_button_mercy.x))
bone = instance_create_depth(xx,500,0,battle_bullet_bone_menu)
bone.length = 120
bone.hspeed = 0
bone.vspeed = 0
bone.color = BONE.WHITE
bone.out = 0
bone.rotate = 0
bone.auto_destroy = 0
bone.angle = 0
bone.duration = 80
bone.alpha = 0.5
Anim_Create(bone, "y", 1, 1, bone.y, -40, 20)
Anim_Create(bone, "vspeed", 1, 1, -4.2, 9, 60, 20)
Anim_Create(bone, "alpha", 1, 1, 0.5, 0.5, 1, 35)