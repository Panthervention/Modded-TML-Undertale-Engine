///@arg damage
function Battle_SetMenuFightDamage() {
	var DAMAGE=argument[0];

	if(DAMAGE>=-1){
		battle_controller._menu_fight_damage=DAMAGE;
		return true;
	}else{
		return false;
	}


}
