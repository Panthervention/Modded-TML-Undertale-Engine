///@arg flee_enabled
function Battle_SetMenuMercyFleeEnabled() {
	var ENABLED=argument[0];

	battle_controller._menu_mercy_flee_enabled=ENABLED;

	return true;


}
