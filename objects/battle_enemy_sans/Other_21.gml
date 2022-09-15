///@desc Turn End
global.deadable = false
global.menu_hurt = "activated"
if (!instance_exists(battle_turn_sans_menu) and Battle_GetTurnNumber() != 14 and Battle_GetTurnNumber() != 24)
    instance_create_depth(0, 0, 0, battle_turn_sans_menu)
	
if (Battle_GetTurnNumber() > 2)
	_check_status = 1