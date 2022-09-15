if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
}
if _timer = 40
{
	Battle_SlamDown()
	Battle_SoulEffect(battle_soul_blue)
	alarm[0] = 60
}

if _timer >= 40 and _timer%30=0 and _timer < 1740 and global.difficulty != 1 or _timer >= 40 and _timer%30=0 and _timer < 890
{
	MakeBoneV(160,240,148,2,0,0,0,0,1)
	MakeBoneV(480,400,148,-2,0,0,0,0,1)
}

if _timer >= 40 and _timer < 1740 and global.difficulty != 1 or _timer >= 40 and _timer < 890
{
	_boner_y += 0.015
	with battle_bullet_bone
	{
		if y < 320
		y = 240 + (sin(battle_turn_sans_11._boner_y)*40)
		else if y > 320
		y = 400 + (sin(battle_turn_sans_11._boner_y)*40)
	}
}

if _timer >= 1740 or _timer >= 890 and global.difficulty = 1
{
	alarm[0]=-1
	alarm[1]=-1
	with battle_bullet_bone
	{
		if y < 320
		y--
		else if y > 320
		y++ 
	}
}

if _timer = 1860 or _timer = 1010 and global.difficulty = 1
    Battle_SetBoardSizeCubic(65,65,65,65)

if _timer = 1920 or _timer = 1070 and global.difficulty = 1
    Battle_EndTurn()
