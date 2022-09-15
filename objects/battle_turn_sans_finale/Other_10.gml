///@desc Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65)

if (instance_exists(battle_turn_sans_menu))
{
	with (battle_turn_sans_menu)
	{
		alarm[1] = -1
		alarm[2] = -1
		alarm[3] = -1
	}
	battle_enemy_sans.alarm[2] = 1
	with (battle_bullet)
		auto_destroy = 1
}
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_sweat 2}{sans_head 4}well,{sleep 20} here goes&nothing...{pause}{clear}{sans_head 3}are you ready?{pause}{clear}{sans_head 5}survive THIS,{sleep 20} and&i'll show you my&{color_text `red`}special attack{color_text `black`}!"