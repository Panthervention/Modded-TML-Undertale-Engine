///@desc Turn Preparation Start
var turn_number = Battle_GetTurnNumber()
//Prepare the attack
if (Battle_GetMenuChoiceButton() == BATTLE_MENU_CHOICE_BUTTON.FIGHT)
{
    if (Battle_GetTurnNumber() < 23)
    {
        var turn = asset_get_index(("battle_turn_sans_" + string(turn_number)))
        if object_exists(turn)
            instance_create_depth(0, 0, 0, turn)
    }
    else if (Battle_GetTurnNumber() == 23)
        instance_create_depth(0, 0, 0, battle_turn_sans_finale)
}
else if (Battle_GetMenuChoiceButton() == BATTLE_MENU_CHOICE_BUTTON.ACT || Battle_GetMenuChoiceButton() == BATTLE_MENU_CHOICE_BUTTON.ITEM)
{
    if (Battle_GetTurnNumber() == 14 || Battle_GetTurnNumber() == 23)
        Battle_SetNextState(0)
	else if Battle_GetTurnNumber() != 14 and Battle_GetTurnNumber() != 23
    {
        turn = asset_get_index(("battle_turn_sans_" + string(turn_number)))
        if object_exists(turn)
            instance_create_depth(0, 0, 0, turn)
    }
}
else if (Battle_GetMenuChoiceButton() == BATTLE_MENU_CHOICE_BUTTON.MERCY)
{
    if (Battle_GetTurnNumber() == 14)
        instance_create_depth(0, 0, 0, battle_turn_sans_spared)
    else if Battle_GetTurnNumber() != 14
    {
		if Battle_GetTurnNumber() != 23
		{
			turn = asset_get_index(("battle_turn_sans_" + string(turn_number)))
			if object_exists(turn)
			   instance_create_depth(0, 0, 0, turn)
		}
		else Battle_SetNextState(0)
    }
}
