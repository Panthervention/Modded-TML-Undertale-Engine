///@arg override
function Battle_SetMenuChoiceMercyOverride() {
	var OVERRIDE=argument[0];

	battle_controller._menu_choice_mercy_override=OVERRIDE;

	return true;


}
