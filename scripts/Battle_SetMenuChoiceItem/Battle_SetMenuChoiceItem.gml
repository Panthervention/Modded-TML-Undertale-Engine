///@arg item_choice
///@arg call_event*
function Battle_SetMenuChoiceItem() 
{
    global.SLOT=argument[0];
    var CALL=true;
    if(argument_count>=2){
        CALL=argument[1];
    }

    if(global.SLOT<Item_GetNumber()){
        Item_TextUpdate()
        var text="";
        var text2="";
        var proc=battle_controller._menu_choice_item_first;
        repeat(2)
        {
            if(Item_IsValid(Item_Get(proc)))
            {
                text+=(Item_IsValid(Item_Get(proc))) ? "* "+Item_GetName(Item_Get(proc))+"&" : ""+Item_GetName(Item_Get(proc))+"&";
                proc+=1;
                text2+=(Item_IsValid(Item_Get(proc))) ? "* "+Item_GetName(Item_Get(proc))+"&" : ""+Item_GetName(Item_Get(proc))+"&";
                proc+=1;
            }
        }
        Battle_SetDialog(text,true);
        Battle_SetDialog(text2,true,true);
                
        if(CALL){
            Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
        }
    
        return true;
    }else{
        return false;
    }


}

///@arg a
function Item_TextUpdate()
{
	if(global.SLOT<Item_GetNumber()){	
	battle_controller._menu_choice_item=global.SLOT;
	while(global.SLOT>=battle_controller._menu_choice_item_first+2)
		battle_controller._menu_choice_item_first+=2;
	
	while(global.SLOT<battle_controller._menu_choice_item_first)
		battle_controller._menu_choice_item_first-=2;
	}
	
	switch global.slot
	{
	case 0:
	case 1:
	case 2:
	case 3:
	battle_controller._menu_choice_item_first = 0
	break;
	
	case 4:
	case 5:
	case 6:
	case 7:
	battle_controller._menu_choice_item_first = 4
	break;
	
	case 8:
	case 9:
	case 10:
	case 11:
	battle_controller._menu_choice_item_first = 8
	break;
	}
	
}
