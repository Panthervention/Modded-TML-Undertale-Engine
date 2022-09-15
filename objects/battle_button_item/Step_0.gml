event_inherited();
var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();

if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		if Item_GetNumber() > 0 image_index=1;
		else image_index=3;
	}else{
		if Item_GetNumber() > 0 image_index=0;
		else image_index=2;
	}
}else{
	if Item_GetNumber() > 0 image_index=0;
	else image_index=2;
}