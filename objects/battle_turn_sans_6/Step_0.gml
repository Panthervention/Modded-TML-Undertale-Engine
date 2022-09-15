if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
}
if _timer = 30
{
	Battle_SetSoul(battle_soul_blue)
	Battle_SoulEffect(battle_soul_blue)
}
if _timer >= 30 and _timer%98=0 and _timer < 960
{
	MakePlatform(0,295,100,2,0,1,0,0,0,0)
	MakePlatform(640,345,100,-2,0,1,0,0,0,0)
}

if _timer = 45
{
    alarm[0] = 1
	if global.difficulty != 1
		alarm[1] = 1
}

if _timer = 960
{
	audio_play_sound(snd_ding,0,0)
	alarm[0] = -1
	alarm[1] = -1
	with battle_platform
	{
		if move_x = 2
		    move_x = 6
		else if move_x = -2
		    move_x = -6
	}
}

if _timer = 1140
{
	battle_soul.visible = false
	Battle_SetBoardSizeCubic(65,65,65,65,20)
}

if _timer = 1170
    Battle_EndTurn()