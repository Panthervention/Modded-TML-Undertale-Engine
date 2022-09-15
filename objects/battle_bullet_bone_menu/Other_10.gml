if alpha >= 1
{
	if(color = BONE.WHITE)
	{
		if global.menu_hurt = "activated"
		{
			Battle_CallSoulEventHurt();
			Player_HurtKRM();
			Camera_Shake(2,2,1,1,1,1);
			event_inherited();
		}
	}
	if(color = BONE.BLUE)
	{
		if!(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)
		{
			if global.menu_hurt = "activated"
			{
				Battle_CallSoulEventHurt();
				Player_HurtKRM();
				Camera_Shake(2,2,1,1,1,1);
				event_inherited();
			}
		}
	}
	if(color = BONE.ORANGE)
	{
		if(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)
		{
			if global.menu_hurt = "activated"
			{
				Battle_CallSoulEventHurt();
				Player_HurtKRM();
				Camera_Shake(2,2,1,1,1,1);
				event_inherited();
			}
		}
	}
}