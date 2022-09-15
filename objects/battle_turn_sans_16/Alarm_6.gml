if _timer < 200
{
	alarm[6] = 1
	_timer++
	audio_stop_sound(snd_gb_charge)
}
else
{
	alarm[6]=-1
	alarm[0]=1
	_timer=0
	gap = 0
}

if _timer = 1
{
	_case = choose(1,2,3,4)
	Battle_SetBoardSize(65,65,150,150,1)
	Battle_SetSoul(battle_soul_red)
	Battle_FlashOff()
	if _case = 1
	{
		battle_soul.x = 178
		battle_soul.y = 320
		MakeBoneWallLeft(30,290,200,0,160)
	}
	else if _case = 2
	{
		battle_soul.x = 462
		battle_soul.y = 320
		MakeBoneWallRight(30,290,200,0,160)
	}
	else if _case = 3
	{
		battle_soul.x = 320
		battle_soul.y = 320
		MakeGB(320,160,320,160,-90,-90,170,3,3,2000,1,0,0)
		MakeGB(160,320,160,320,0,0,170,3,3,2000,1,0,0)
		MakeGB(480,320,480,320,-180,-180,170,3,3,2000,1,0,0)
		MakeGB(320,480,320,480,90,90,170,3,3,2000,1,0,0)
	}
	else if _case = 4
	{
		battle_soul.x = 320
		battle_soul.y = 320
		MakeGB(160,160,160,160,-45,-45,170,3,3,2000,1,0,0)
		MakeGB(480,160,480,160,-135,-135,170,3,3,2000,1,0,0)
		MakeGB(160,480,160,480,45,45,170,3,3,2000,1,0,0)
		MakeGB(480,480,480,480,135,135,170,3,3,2000,1,0,0)
	}
}

if _timer >= 1 and _timer < 120
{
	gap+=0.075
	if _case = 1
	MakeBoneGapV(480,320+(sin(gap)*30),-10,24,1,0)
	else if _case = 2
	MakeBoneGapV(160,320+(sin(gap)*30),10,24,1,0)
	else if _case = 3 or _case = 4
	{
		MakeBoneGapV(480,320+(sin(gap)*30),-10,30,1,0)
		MakeBoneGapV(160,320+(sin(gap)*30),10,30,1,0)
	}
}