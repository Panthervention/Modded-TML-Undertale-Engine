if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
}
if _timer = 10
{
	Battle_SetSoul(battle_soul_blue)
	Battle_SoulEffect(battle_soul_blue)
}

if _timer >= 15 and _timer%40=0 and _gap < 8
{
	if global.difficulty != 1
	{
		MakeBoneTop(480,120,-4,2,0,0,1)
		MakeBoneTop(480,75,-4,0,0,0,1)
	}
	MakeBoneBottom(480,15,-4,0,0,0,1)
	MakeBoneBottom(560,120,-4,1,0,0,1)
	_gap++
}

if _timer = 400
{
	Battle_SlamUp()
	if global.difficulty != 1
	{
		MakeBoneWallTop(30,55,20,0)
		MakeBoneWallBottom(30,55,20,0)
	}
}

if _timer >= 480 and _timer%40=0 and _gap < 17
{
	if global.difficulty != 1
	{
		MakeBoneBottom(160,120,4,2,0,0,1)
		MakeBoneBottom(160,75,4,0,0,0,1)
	}
	MakeBoneTop(160,15,4,0,0,0,1)
	MakeBoneTop(80,120,4,1,0,0,1)
	_gap++
}
if _timer = 960
    Battle_EndTurn()


