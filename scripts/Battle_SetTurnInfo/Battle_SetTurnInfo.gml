///@arg info
///@arg value
function Battle_SetTurnInfo() {
	var INFO=argument[0];
	var VALUE=argument[1];

	battle_controller._turn_info[?INFO]=VALUE;

	return true;


}
