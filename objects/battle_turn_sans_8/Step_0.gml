if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
	battle_enemy_sans._body_image = 0
}
if _timer = 30
{
	Battle_SetSoul(battle_soul_blue)
	Battle_SoulEffect(battle_soul_blue)
}
if _timer >= 30 and _timer%55=0 and _timer < 960
{
	MakePlatform(0,295,40,2.5,0,1,0,0,0,0)
	MakePlatform(640,345,40,-2.5,0,1,0,0,0,0)
}

if _timer >= 60 and _timer%75=0 and _timer < 1080
{
    if global.difficulty != 1 cho = choose(0,1,2,3)
	else cho = choose(0,1)
	gb_y = choose(270,320,370)
	gb_y2 = choose(270,320,370)
	if cho = 0
	    MakeGB(0,gb_y,60,gb_y,-90,0,40,2,2,25,25,0)
	else if cho = 1
	    MakeGB(640,gb_y,580,gb_y,-90,-180,40,2,2,25,25,0)
	else if cho = 2
	{
	   MakeGB(0,gb_y,60,gb_y,-90,0,40,2,2,25,25,0)
	   MakeGB(0,gb_y2,60,gb_y2,-90,0,40,2,2,25,25,0)
	}
	else if cho = 3
	{
	   MakeGB(640,gb_y,580,gb_y,-90,-180,40,2,2,25,25,0)
	   MakeGB(640,gb_y2,580,gb_y2,-90,-180,40,2,2,25,25,0)
	}
}

if _timer = 1140
	Battle_SetBoardSizeCubic(65,65,65,65,20)

if _timer = 1200
    Battle_EndTurn()