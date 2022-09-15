///@argheal
function Player_Heal(HEAL) {
	if instance_exists(battle_controller)
		battle_controller.kr_timer = 0
	if(HEAL>=0)
	{
		var HP=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP);
		var HP_MAX=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX);
		Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,(HP+HEAL<=HP_MAX?HP+HEAL: HP_MAX));
		if Player_GetHp() + Player_GetKR() >= Player_GetHpMax()
			Player_SetKR(Player_GetHpMax() - Player_GetHp())
		return true;
	}else{
		return Player_Hurt(-HEAL);
	}


}
