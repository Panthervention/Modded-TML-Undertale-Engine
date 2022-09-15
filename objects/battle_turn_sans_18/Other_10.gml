/// @description Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65,15)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_sweat 2}{sans_head 5}you'll keep&consuming timelines&over and over,{sleep 20}&until...{pause}{clear}{sans_head 4}well.{pause}{clear}{sans_body 1}{sans_sweat 2}hey,{sleep 20}{clear}{sans_head 3}take it from me,{sleep 20}&kid.{pause}{clear}someday...{pause}{clear}you gotta learn&when to {color_text `red`}QUIT{color_text `black`}."