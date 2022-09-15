///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		//Check: is enemy supposed to be dead?
		if(_hp<=0)
		{
			//Create particle effect
			var inst=instance_create_depth(x,y,0,battle_death_particle);
			inst.sprite=sprite_index;
			audio_play_sound(snd_vaporize,0,false);
			instance_destroy();
		}
		global.menu_hurt = "de-activated"
		global.deadable = true
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction())
		{
			case 0:
			if Battle_GetTurnNumber() != 14
			{
			if _check_status = 0
				Dialog_Add("* Sans {sleep 25}- ATK 1 DEF 1&{sleep 25}* The {color_text `red`}hardest{color_text `white`} enemy.&{sleep 25}* Can deal more than 1 damage.");
			else if _check_status = 1
				Dialog_Add("* Sans {sleep 25}- ATK 1 DEF 1&{sleep 25}* The {color_text `red`}hardest{color_text `white`} enemy.&{sleep 25}* Can deal more than 1 damage.{sleep 30}{clear}* Can't keep dodging forever.{sleep 20}&* Keep attacking.");
			}
			else Dialog_Add("* Sans {sleep 25}- ATK 1 DEF 1&{sleep 25}* The {color_text `red`}sussiest{color_text `white`} enemy.&{sleep 25}* It's a trick! {sleep 25}Keep attacking!");
			global.menu_hurt = "de-activated";
			global.deadable = true;
			break;
		}
	case BATTLE_MENU_CHOICE_BUTTON.ITEM:
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		global.menu_hurt = "de-activated"
		global.deadable = true
		break;
	
}
if Battle_GetTurnNumber() != 23
{
	if (instance_exists(battle_turn_sans_menu))
	{
		with (battle_turn_sans_menu)
		{
			alarm[1] = -1
			alarm[2] = -1
			alarm[3] = -1
		}
		alarm[2] = 1
		with (battle_bullet)
			auto_destroy = 1
	}
}