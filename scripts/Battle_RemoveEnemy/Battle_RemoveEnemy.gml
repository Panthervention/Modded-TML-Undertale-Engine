///@arg enemy_slot
function Battle_RemoveEnemy() {
	var ENEMY=argument[0];

	if(Battle_IsEnemySlotValid(ENEMY)){
		var INST=Battle_GetEnemy(ENEMY);
		if(instance_exists(INST)){
			INST._enemy_slot=-1;
		}
		battle_controller._enemy[ENEMY]=noone;
		battle_controller._enemy_name[ENEMY]="";
		battle_controller._enemy_spareable[ENEMY]=false;
		battle_controller._enemy_action_number[ENEMY]=0;
		battle_controller._enemy_action_name[ENEMY,0]="";
		battle_controller._enemy_action_name[ENEMY,1]="";
		battle_controller._enemy_action_name[ENEMY,2]="";
		battle_controller._enemy_action_name[ENEMY,3]="";
		battle_controller._enemy_action_name[ENEMY,4]="";
		battle_controller._enemy_action_name[ENEMY,5]="";
		battle_controller._enemy_center_pos_x[ENEMY]=0;
		battle_controller._enemy_center_pos_y[ENEMY]=0;
		battle_controller._enemy_def[ENEMY]=0;
		return true;
	}else{
		return false;
	}


}
