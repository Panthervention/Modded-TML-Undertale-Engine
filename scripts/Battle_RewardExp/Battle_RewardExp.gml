///@arg reward_exp
function Battle_RewardExp() {
	var EXP=argument[0];

	battle_controller._reward_exp+=EXP;
	return true;


}
