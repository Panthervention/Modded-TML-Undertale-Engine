///@desc Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_body 1}{sans_head 4}all i know is...{sleep 20}&seeing what comes&next...{pause}{clear}{sans_head 6}i can't afford not&to care anymore."