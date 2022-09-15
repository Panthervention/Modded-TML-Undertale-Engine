Battle_SetSoul(battle_soul_blue)
Battle_SetBoardSize(65,65,150,150,1)
Battle_FlashOff()
var space = 0
var space_wtf = 0
var delay = 0
var delay_wtf = 0
_case = choose(1,2)

if _case = 1
{
	battle_soul.x=180
	battle_soul.y=375
	repeat(16)
	{
		var yy = battle_board.y+battle_board.down-50/2-5
		oof=MakeBoneV(480+space,yy,50,-8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay)
		space+=20
		delay+=10
		}
	repeat(24)
	{
		var yy = battle_board.y+battle_board.down-10/2-5
		oof=MakeBoneV(480+space,yy,10,-8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay)
		space+=20
		delay+=10
	}
	repeat(24)
	{
		var yy = battle_board.y-battle_board.up+10/2+5
		oof=MakeBoneV(160-space_wtf,yy,10,8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay_wtf)
		space_wtf+=20
		delay_wtf+=10
	}
	repeat(16)
	{
		var yy = battle_board.y-battle_board.up+50/2+5
		oof=MakeBoneV(160-space_wtf,yy,50,8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay_wtf)
		space_wtf+=20
		delay_wtf+=10
	}
}

else if _case = 2
{
	battle_soul.x=460
	battle_soul.y=375
	repeat(16)
	{
		var yy = battle_board.y+battle_board.down-50/2-5
		oof=MakeBoneV(160-space,yy,50,8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay)
		space+=20
		delay+=10
		}
	repeat(24)
	{
		var yy = battle_board.y+battle_board.down-10/2-5
		oof=MakeBoneV(160-space,yy,10,8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay)
		space+=20
		delay+=10
	}
	repeat(24)
	{
		var yy = battle_board.y-battle_board.up+10/2+5
		oof=MakeBoneV(480+space_wtf,yy,10,-8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay_wtf)
		space_wtf+=20
		delay_wtf+=10
	}
	repeat(16)
	{
		var yy = battle_board.y-battle_board.up+50/2+5
		oof=MakeBoneV(480+space_wtf,yy,50,-8,0,0,0,0,0)
		Anim_Create(oof,"auto_destroy",0,0,0,1,40+delay_wtf)
		space_wtf+=20
		delay_wtf+=10
	}
}
alarm[0] = 80