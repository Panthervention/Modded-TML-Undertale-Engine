function Battle_SlamLeft() {
	var DURATION = 1
	var WHITE = 0
	if (argument_count >= 1)
	    DURATION = argument[0]
	var TARGET = battle_enemy_sans
	if (argument_count >= 2)
	    WHITE = argument[1]
	battle_slam_manager.alarm[2] = 1
	battle_slam_manager.white = WHITE
	with (TARGET)
	{
	    action = 1
	    _action_step = 0
	    alarm[0] = (DURATION + 25)
	}


}
