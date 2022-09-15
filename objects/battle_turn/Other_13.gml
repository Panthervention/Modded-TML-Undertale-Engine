///@desc Turn End
battle_soul.visible = true
instance_destroy();
instance_destroy(battle_bullet_bone);
Battle_SetSoul(battle_soul_red)
Battle_SoulEffect(battle_soul_red)
Battle_SetSansAction(SANS_ACTION.IDLE)
