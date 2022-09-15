///@desc Turn Preparation Start
event_inherited();
audio_stop_sound(bgm_think)
Battle_SetSansAction(SANS_ACTION.STATIC)
battle_soul.visible = true
battle_soul.moveable = false
battle_soul.x = 320
battle_soul.y = 320
Battle_SetBoardSizeCubic(65,65,65,65)
b = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
b.text = "{sans_head 4}{voice 2}{font 3}...{pause}{clear}you are sparing me?{pause}{clear}{sans_head 1}finally.{pause}{clear}{sans_head 3}buddy.{sleep 20}&pal.{pause}{clear}{sans_head 4}i know how hard&it must be...{pause}{clear}to make that&choice.{pause}{clear}to go back on&everything you've&worked up to.{pause}{clear}{sans_head 0}i want you to&know...{sleep 20}&i won't let it&go to waste.{pause}{clear}{sans_body 1}...{pause}{clear}{sans_head 3}c'mere, {sleep 25}pal."