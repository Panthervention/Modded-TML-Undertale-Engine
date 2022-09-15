///@arg reward_gold
function Battle_RewardGold() {
	var GOLD=argument[0];

	battle_controller._reward_gold+=GOLD;
	return true;


}
