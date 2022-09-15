///@desc Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_sweat 2}{sans_head 4}cause...{sleep 20}&y'see...{pause}{clear}{sans_head 1}all this fighting&is really tiring&me out."