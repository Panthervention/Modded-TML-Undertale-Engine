if _timer < 180
{
	alarm[8] = 1
	_timer++
	audio_stop_sound(snd_gb_charge)
}
else
{
	alarm[8]=-1
	alarm[0]=1
	_timer=0
}

if _timer = 1
{
	_case = choose(1,2)
	Battle_SetBoardSize(65,65,150,150,1)
	Battle_SetSoul(battle_soul_blue)
	Battle_FlashOff()
	battle_soul.x = 320
	if _case = 1
		battle_soul.y = 330
	else if _case = 2
		battle_soul.y = 280
		
	MakePlatform(320,345,30,0,0,1,0)
	MakePlatform(320,295,30,0,0,1,0)
	MakeBoneWallBottom(0,30,9999,0,1)
	
}

if _timer = 2
{
	if _case = 1
	{
		MakeBoneBottom(480,70,-4,0,0,0,1)
		MakeBoneBottom(490,70,-4,0,0,0,1)
		MakeBoneBottom(500,70,-4,0,0,0,1)
	
		MakeBoneTop(160,22,4,0,0,0,1)
		MakeBoneTop(150,22,4,0,0,0,1)
		MakeBoneTop(140,22,4,0,0,0,1)
	}
	else if _case = 2
	{
		MakeBoneBottom(160,70,4,0,0,0,1)
		MakeBoneBottom(150,70,4,0,0,0,1)
		MakeBoneBottom(140,70,4,0,0,0,1)
	
		MakeBoneTop(480,22,-4,0,0,0,1)
		MakeBoneTop(490,22,-4,0,0,0,1)
		MakeBoneTop(500,22,-4,0,0,0,1)
	}
}

if _timer = 102
{
	if _case = 1
	{
		MakeBoneBottom(160,70,4,0,0,0,1)
		MakeBoneBottom(150,70,4,0,0,0,1)
		MakeBoneBottom(140,70,4,0,0,0,1)
	
		MakeBoneTop(480,22,-4,0,0,0,1)
		MakeBoneTop(490,22,-4,0,0,0,1)
		MakeBoneTop(500,22,-4,0,0,0,1)
	}
	else if _case = 2
	{
		MakeBoneBottom(480,70,-4,0,0,0,1)
		MakeBoneBottom(490,70,-4,0,0,0,1)
		MakeBoneBottom(500,70,-4,0,0,0,1)
	
		MakeBoneTop(160,22,4,0,0,0,1)
		MakeBoneTop(150,22,4,0,0,0,1)
		MakeBoneTop(140,22,4,0,0,0,1)
	}
}
