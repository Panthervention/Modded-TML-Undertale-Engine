if _timer < 240
{
	alarm[2] = 1
	_timer++
	audio_stop_sound(snd_gb_charge)
}
else
{
	alarm[2]=-1
	alarm[0]=1
	_timer=0
}


if _timer = 1
{
	Battle_SetBoardSize(65,65,150,150,1)
	Battle_SetSoul(battle_soul_blue)
	gb1 = MakeGB(0,battle_soul.y,200,battle_soul.y,-90,0,180,2,2,30,1,0,0)
	gb2 = MakeGB(640,battle_soul.y,440,battle_soul.y,-90,-180,180,2,2,30,1,0,0)
	Battle_FlashOff()
	_case = choose(1,2)
	switch _case
	{
		case 1:
		battle_soul_blue.dir = DIR.DOWN
		var y1 = battle_board.y+battle_board.down-120/2-5
		var y2 = battle_board.y+battle_board.down-60/2-5
		battle_soul.x = 320
		battle_soul.y = 375
		break;
	
		case 2:
		battle_soul_blue.dir = DIR.UP
		var y1 = battle_board.y-battle_board.up+120/2+5
		var y2 = battle_board.y-battle_board.up+60/2+5
		battle_soul.x = 320
		battle_soul.y = 265
		break;
	}
	a1=MakeBoneV(130,y1,120,0,0,0,0,0,0)
	a2=MakeBoneV(510,y1,120,0,0,0,0,0,0)
	a3=MakeBoneV(140,y2,60,0,0,0,0,0,0)
	a4=MakeBoneV(150,y2,60,0,0,0,0,0,0)
	a5=MakeBoneV(160,y2,60,0,0,0,0,0,0)
	a6=MakeBoneV(480,y2,60,0,0,0,0,0,0)
	a7=MakeBoneV(490,y2,60,0,0,0,0,0,0)
	a8=MakeBoneV(500,y2,60,0,0,0,0,0,0)
	Anim_Create(a1,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a1.x,155,90)
	Anim_Create(a2,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a2.x,-155,90)
	Anim_Create(a3,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a3.x,155,90)
	Anim_Create(a4,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a4.x,155,90)
	Anim_Create(a5,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a5.x,155,90)
	Anim_Create(a6,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a6.x,-155,90)
	Anim_Create(a7,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a7.x,-155,90)
	Anim_Create(a8,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,a8.x,-155,90)
}

if _timer = 105
{
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
	a1.color = 1
	a2.color = 1
	a3.color = 2
	a4.color = 2
	a5.color = 2
	a6.color = 2
	a7.color = 2
	a8.color = 2
	Anim_Create(a1,"hspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,60)
	Anim_Create(a2,"hspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,60)
	switch _case
	{
		case 1:
		Anim_Create(a3,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,90)
		Anim_Create(a4,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,90)
		Anim_Create(a5,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,90)
		Anim_Create(a6,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,90)
		Anim_Create(a7,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,90)
		Anim_Create(a8,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,-6,90)
		break;
		
		case 2:
		Anim_Create(a3,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,90)
		Anim_Create(a4,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,90)
		Anim_Create(a5,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,90)
		Anim_Create(a6,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,90)
		Anim_Create(a7,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,90)
		Anim_Create(a8,"vspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,0,6,90)
		break;
	}
}

if _timer > 1 and _timer < 140
{
	gb1.y=battle_soul.y
	gb2.y=battle_soul.y
}