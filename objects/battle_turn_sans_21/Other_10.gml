/// @description Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65,15)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_sweat 2}{sans_head 4}and if you keep&pushing me...{pause}{clear}{sans_head 3}then i'll be&forced to use my&{color_text `red`}special attack{color_text `black`}."