if image_alpha >= 0.6
{
	switch blend
	{	
		default:
			Battle_CallSoulEventHurt();
			Player_HurtKR();
			Camera_Shake(4*image_yscale,4*image_yscale,1,1,1,1);
			event_inherited();
			break;
		
		case 1:
			if!(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)
			{		
				Battle_CallSoulEventHurt();
				Player_HurtKR();
				Camera_Shake(4*image_yscale,4*image_yscale,1,1,1,1);
				event_inherited();
			}
			break;
			
		case 2:
			if(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious)
			{
				Battle_CallSoulEventHurt();
				Player_HurtKR();
				Camera_Shake(4*image_yscale,4*image_yscale,1,1,1,1);
				event_inherited();
			}
			break;
			
		case 3:
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
				Camera_Shake(4*image_yscale,4*image_yscale,1,1,1,1);
				event_inherited();
			}
			break;
	}
}