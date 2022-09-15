///@desc Turn Preparation Start
event_inherited();
battle_soul.visible = false
battle_board.alpha_frame = 0
Battle_SetSansAction(SANS_ACTION.STATIC)
Battle_SetBoardSizeCubic(65,65,65,65)
audio_play_sound(bgm_bird,0,true)
b = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
b.text = "{sans_head 4}{voice 2}{font 3}it's a beautiful&day outside.{pause}{clear}birds are singing,{sleep 20}&flowers are&blooming...{pause}{clear}on days like these,{sleep 20}&kids like you..."