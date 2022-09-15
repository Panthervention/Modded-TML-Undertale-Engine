Battle_SetSoul(battle_soul_blue)
Battle_SetBoardSize(65,65,150,150,1)
Battle_FlashOff()
var space = 0
battle_soul.x = 320
battle_soul.y = 376
_case = choose(1,2)
global._inv = 30
repeat(40)
{
	if _case = 1
	{
		MakeBoneBottom(-2000+space,10,2,0,0,0,0)
		MakeBoneTop(2000-space,100,-2,0,0,0,0)
	}
	else if _case = 2
	{
		MakeBoneBottom(2000-space,10,-2,0,0,0,0)
		MakeBoneTop(-2000+space,100,2,0,0,0,0)
	}
	space+=60
}
alarm[0] = 150