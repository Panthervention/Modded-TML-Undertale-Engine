///@arg KR
function Player_SetKR() {
	var KR = argument[0]
	var result = Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.KR, KR)
	return result;


}
