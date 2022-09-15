/// @description Turn Preparation Start
event_inherited();
Battle_SetBoardSizeCubic(65,65,65,65,15)
sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
sans.text = "{voice 2}{font 3}{sans_sweat 2}{sans_head 3}yeah.{sleep 20} my {color_text `red`}special&attack{color_text `black`}.{sleep 40}&sound familiar?{pause}{clear}well,{sleep 20} get ready.{sleep 20}&cause after the&next move,{sleep 20} i'm&going to {color_text `red`}use it{color_text `black`}.{pause}{clear}{sans_head 1}so,{sleep 20} if you don't wanna&see it,{sleep 20} now&would be good time&to die."