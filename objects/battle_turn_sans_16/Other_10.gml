/// @description Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65,15)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_sweat 2}{sans_head 3}and maybe all they&needed was...{sleep 20}&i dunno.{pause}{clear}{sans_body 1}{sans_sweat 2}some good food,{sleep 20}&some bad laughs,{sleep 20}&some nice friends."