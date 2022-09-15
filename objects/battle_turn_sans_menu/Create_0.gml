if global.difficulty != 1{
	if (Battle_GetTurnNumber() <= 26){
	    aim = 0
	    bone_number = 0
	    bone1 = instance_create_depth(-8, 280, 0, battle_bullet_bone_menu_1)
	    alarm[0] = 1
	}if (Battle_GetTurnNumber() >= 6){
	    alarm[1] = 2
	    _menu = 0
	}if (Battle_GetTurnNumber() > 13){
	    alarm[2] = 2
	}if (Battle_GetTurnNumber() >= 19){
	    alarm[3] = 2
	}
}else{
	if (Battle_GetTurnNumber() >= 14){
	    aim = 0
	    bone_number = 0
	    bone1 = instance_create_depth(-8, 280, 0, battle_bullet_bone_menu_1)
	    alarm[0] = 1
	}
	if (Battle_GetTurnNumber() >= 16){
	    alarm[1] = 2
	    _menu = 0
	}
}
