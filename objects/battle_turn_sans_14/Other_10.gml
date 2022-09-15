/// @description Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65,15)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_body 1}{sans_sweat 2}{sans_head 3}welp,{sleep 20} it was&worth a shot.{pause}{clear}{sans_head 5}guess you like&doing things the&hard way, {sleep 20}huh?"

