if _timer < 90
{
	alarm[3] = 1
	_timer++
	audio_stop_sound(snd_gb_charge)
}
else
{
	alarm[3]=-1
	alarm[0]=1
	_timer=0
}

if _timer = 1
{
	Battle_SetBoardSize(65,65,150,150,1)
	Battle_SetSoul(battle_soul_blue)
	Battle_FlashOff()
	battle_soul.x=320
	battle_soul.y=370
}

if _timer%20=0
{
	MakeBoneGapV(160,360,6,18,1,0)
	MakeBoneGapV(480,360,-6,18,1,0)
}