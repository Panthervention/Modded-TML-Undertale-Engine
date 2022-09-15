if(Battle_GetMenu()!=BATTLE_MENU.ITEM){
	instance_destroy();
}
switch global.slot
{
	case 0:
	case 4:
	case 8:
	battle_soul.x = (battle_board.x-battle_board.left+35)
	battle_soul.y = (battle_board.y-battle_board.up+31)
	break;
	
	case 1:
	case 5:
	case 9:
	battle_soul.x = (battle_board.x-battle_board.left+291)
	battle_soul.y = (battle_board.y-battle_board.up+31)
	break;
	
	case 2:
	case 6:
	case 10:
	battle_soul.x = (battle_board.x-battle_board.left+35)
	battle_soul.y = (battle_board.y-battle_board.up+63)
	break;
	
	case 3:
	case 7:
	case 11:
	battle_soul.x = (battle_board.x-battle_board.left+291)
	battle_soul.y = (battle_board.y-battle_board.up+63)
	break;
}

if(Input_IsPressed(INPUT.RIGHT))
{
	if (global.slot = 0 and Item_GetNumber() > 1) or (global.slot = 2 and Item_GetNumber() > 3) or (global.slot = 4 and Item_GetNumber() > 5) or (global.slot = 6 and Item_GetNumber() > 7) or (global.slot = 8 and Item_GetNumber() > 9) or (global.slot = 10 and Item_GetNumber() > 11)
	{
		global.slot=Battle_GetMenuChoiceItem()+1;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(global.slot)
	}
	else if (global.slot = 1 and Item_GetNumber() > 4) or (global.slot = 3 and Item_GetNumber() > 6) or (global.slot = 5 and Item_GetNumber() > 8) or (global.slot = 7 and Item_GetNumber() > 10)
	{
		global.slot=Battle_GetMenuChoiceItem()+3;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(global.slot)
	}
}

if(Input_IsPressed(INPUT.LEFT))
{
	if global.slot = 1 or global.slot = 3 or global.slot = 5 or global.slot = 7 or global.slot = 9 or global.slot = 11
	{
		global.slot=Battle_GetMenuChoiceItem()-1;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(global.slot)
	}
	else if global.slot = 4 or global.slot = 6 or global.slot = 8 or global.slot = 10
	{
		global.slot=Battle_GetMenuChoiceItem()-3;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(global.slot)
	}
}

if(Input_IsPressed(INPUT.DOWN))
{
	if (global.slot = 0 and Item_GetNumber() > 2) or (global.slot = 1 and Item_GetNumber() > 3) or (global.slot = 4 and Item_GetNumber() > 6) or (global.slot = 5 and Item_GetNumber() > 7) or (global.slot = 8 and Item_GetNumber() > 10) or (global.slot = 9 and Item_GetNumber() > 11) 
	{	
		global.slot=Battle_GetMenuChoiceItem()+2;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(global.slot)
	}
}

if(Input_IsPressed(INPUT.UP))
{
	if global.slot = 2 or global.slot = 3 or global.slot = 6 or global.slot = 7 or global.slot = 9 or global.slot = 11
	{	
		global.slot=Battle_GetMenuChoiceItem()-2;
		audio_play_sound(snd_menu_switch,0,false)
		Battle_SetMenuChoiceItem(global.slot)
	}
}