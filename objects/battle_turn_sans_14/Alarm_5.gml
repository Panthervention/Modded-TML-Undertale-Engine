if _timer < 150
{
	alarm[5] = 1
	_timer++
	audio_stop_sound(snd_gb_charge)
}
else
{
	alarm[5]=-1
	alarm[0]=1
	_timer=0
}

if _timer = 1
{
	Battle_SetBoardSize(65,65,150,150,1)
	Battle_SetSoul(battle_soul_blue)
	battle_soul.x = 320
	battle_soul.y = 376
	Battle_FlashOff()
	var space = 0
	repeat(3)
	{
		MakeBoneGapV(160-space,360,6,18,0,0)
		MakeBoneGapV(480+space,360,-6,18,0,0)
		space+=150
	}
}

if _timer = 2
{
	MakeBoneWallBottom(125,65,300,0)
	MakeBoneWallTop(125,50,300,0)
}

if _timer = 80
{
	var space = 0
	repeat(4)
	{
		MakeBoneBottom(160-space,120,6,1,0,0,1)
		MakeBoneBottom(480+space,120,-6,1,0,0,1)
		space+=10
	}
}

