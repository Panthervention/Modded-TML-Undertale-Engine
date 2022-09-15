if _timer < 220
{
	alarm[4] = 1
	_timer++
	audio_stop_sound(snd_gb_charge)
}
else
{
	alarm[4]=-1
	alarm[0]=1
	_timer=0
}

if _timer = 1
{
	Battle_SetBoardSize(65,65,150,150,1)
	Battle_SetSoul(battle_soul_blue)
	Battle_FlashOff()
	battle_soul.x=320
	battle_soul.y=376
}

if _timer = 1
{
	var gap = random_range(-10,-35)
	MakeBoneGapV(160,360+gap,5,18,0,0)
	MakeBoneGapV(0,360+gap,8,18,0,0)
	MakeBoneGapV(-10,360+gap,8,18,0,0)
	MakeBoneGapV(-20,360+gap,8,18,0,0)
	MakeBoneGapV(-30,360+gap,8,18,0,0)
	MakeBoneGapV(-40,360+gap,8,18,0,0)
	MakeBoneGapV(480,360+gap,-5,18,0,0)
	MakeBoneGapV(640,360+gap,-8,18,0,0)
	MakeBoneGapV(650,360+gap,-8,18,0,0)
	MakeBoneGapV(660,360+gap,-8,18,0,0)
	MakeBoneGapV(670,360+gap,-8,18,0,0)
	MakeBoneGapV(680,360+gap,-8,18,0,0)
}

if _timer%75=0
{
	var gap = random_range(-10,-35)
	MakeBoneGapV(160,360+gap,5,18,0,0)
	MakeBoneGapV(0,360+gap,8,18,0,0)
	MakeBoneGapV(-10,360+gap,8,18,0,0)
	MakeBoneGapV(-20,360+gap,8,18,0,0)
	MakeBoneGapV(-30,360+gap,8,18,0,0)
	MakeBoneGapV(-40,360+gap,8,18,0,0)
	MakeBoneGapV(480,360+gap,-5,18,0,0)
	MakeBoneGapV(640,360+gap,-8,18,0,0)
	MakeBoneGapV(650,360+gap,-8,18,0,0)
	MakeBoneGapV(660,360+gap,-8,18,0,0)
	MakeBoneGapV(670,360+gap,-8,18,0,0)
	MakeBoneGapV(680,360+gap,-8,18,0,0)
}