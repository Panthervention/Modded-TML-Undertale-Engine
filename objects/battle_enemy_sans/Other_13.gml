///@desc Menu Switch
switch (Battle_GetMenu())
	{
		case BATTLE_MENU.FIGHT_ANIM:
    	{
			if (Battle_GetMenuFightDamage() >= 0)
			{
        		if (Battle_GetTurnNumber() != 24)
        		{
					if battle_menu_fight_knife._aim_x > 240 and battle_menu_fight_knife._aim_x < 400
					{
						if battle_menu_fight_knife._aim_x >= 320
						{
							Anim_Create(id, "x", ANIM_TWEEN.CIRC, ANIM_EASE.OUT, 320, -120, 30)
							Anim_Create(id, "x", ANIM_TWEEN.CIRC, ANIM_EASE.OUT, 200, 120, 30, 40)
						}
						else if battle_menu_fight_knife._aim_x < 320
						{
							Anim_Create(id, "x", ANIM_TWEEN.CIRC, ANIM_EASE.OUT, 320, 120, 30)
						Anim_Create(id, "x", ANIM_TWEEN.CIRC, ANIM_EASE.OUT, 440, -120, 30, 40)
						}
					}
				_body_sprite = spr_sans_body
				_body_image = 1
				alarm[1]=40
        		}
			if Battle_GetTurnNumber() = 14
				Anim_Create(id,"think_pitch",0,0,1,-1,90)
			}
    	}
		break;
		
    	case BATTLE_MENU.FIGHT_DAMAGE:
    	{
			if (Battle_GetMenuFightDamage() != 1)
            {
        	if (Battle_GetTurnNumber() != 24)
        	{
            	a = instance_create_depth(320, (y - 185), 0, battle_damage)
            	a.damage = -2
        	}
        	else
        	{
            	a = instance_create_depth(320, (y - 185), 0, battle_damage)
            	a.damage = irandom_range(100000, 300000)
            	a.bar_visible = 0
            	battle_enemy_sans._body_image = 0
            	alarm[3] = 1
            	alarm[4] = 40
            	_head_image = 16
            	audio_play_sound(snd_harddamage, 1, false)
        	}
    	}
	}
}