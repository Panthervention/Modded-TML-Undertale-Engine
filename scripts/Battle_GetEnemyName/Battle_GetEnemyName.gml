///@arg enemy_slot
function Battle_GetEnemyName() {
	var ENEMY=argument[0];

	if(instance_exists(Battle_GetEnemy(ENEMY))){
		return battle_controller._enemy_name[ENEMY];
	}else{
		return "";
	}


}
