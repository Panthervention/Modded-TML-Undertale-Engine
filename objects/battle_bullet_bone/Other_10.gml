if alpha >= 1
{
	if(color = BONE.WHITE)
	{
		Battle_CallSoulEventHurt();
		Player_HurtKR();
		Camera_Shake(2,2,1,1,1,1);
		event_inherited();
	}
	if(color = BONE.BLUE)
	{
		if!(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)
		{
			Battle_CallSoulEventHurt();
			Player_HurtKR();
			Camera_Shake(2,2,1,1,1,1);
			event_inherited();
		}
	}
	if(color = BONE.ORANGE)
	{
		if(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)
		{	
			Battle_CallSoulEventHurt();
			Player_HurtKR();
			Camera_Shake(2,2,1,1,1,1);
			event_inherited();
		}
	}
	if(color = BONE.RED)
	{
		if global.debug = false
		{
			Battle_CallSoulEventHurt();
			Player_SetHp(0);
			Player_SetKR(0);
		}
		else if global.debug = true
		{
			Battle_CallSoulEventHurt();
			Player_HurtKR();
			Camera_Shake(2,2,1,1,1,1);
			event_inherited();
		}
	}
	if(color = BONE.BLUE_SOUL)
	{
		if _timer = 0
		{
			_timer = 60;
			Battle_CallSoulEventHurt();
			Battle_SetSoul(battle_soul_blue);
			Battle_SoulEffect(battle_soul_blue);
		}
	}
}