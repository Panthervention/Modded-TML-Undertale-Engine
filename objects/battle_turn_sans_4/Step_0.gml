if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
}
if _timer = 40
{
	Battle_SlamDown()
	Battle_SoulEffect(battle_soul_blue)
}

if _timer >= 40 and _timer%3=0 and _timer < 300 and noob = 0 or _timer >= 40 and _timer%4=0 and _timer < 374 and noob = 1
	MakeBoneBottom(130,20,4-noob,0,0,0,0)

if _timer = 74 and noob = 0 or _timer = 87 and noob = 1
{
	ab=MakePlatform(70,350,48,4-noob,0,1,0,0,0,0)
	ab_y = battle_board.y+battle_board.down-20/2-5
	abb_y = battle_board.y+battle_board.down-35/2-5
	ab1 = MakeBoneV(42,ab_y,20,4-noob,0,0,0,0,0)
	ab2 = MakeBoneV(54,ab_y,20,4-noob,0,0,0,0,0)
	ab3 = MakeBoneV(66,ab_y,20,4-noob,0,0,0,0,0)
	ab4 = MakeBoneV(78,ab_y,20,4-noob,0,0,0,0,0)
	ab5 = MakeBoneV(90,ab_y,20,4-noob,0,0,0,0,0)
	abb1=MakeBoneV(18,abb_y,35,4-noob,0,0,0,0,0)
	abb2=MakeBoneV(6,abb_y,35,4-noob,0,0,0,0,0)
	abb3=MakeBoneV(114,abb_y,35,4-noob,0,0,0,0,0)
	abb4=MakeBoneV(126,abb_y,35,4-noob,0,0,0,0,0)
}
if _timer = 122 and noob = 0 or _timer = 162 and noob = 1
{
	aaa_y = battle_board.y+battle_board.down-65/2-5
	aa=MakePlatform(70,305,48,4-noob,0,1,0,0,0,0)
	aaa1=MakeBoneV(42,aaa_y,65,4-noob,0,0,0,0,0)
	aaa2=MakeBoneV(54,aaa_y,65,4-noob,0,0,0,0,0)
	aaa3=MakeBoneV(66,aaa_y,65,4-noob,0,0,0,0,0)
	aaa4=MakeBoneV(78,aaa_y,65,4-noob,0,0,0,0,0)
	aaa5=MakeBoneV(90,aaa_y,65,4-noob,0,0,0,0,0)
	aab_y = battle_board.y-battle_board.up+12/2+5
	aab1=MakeBoneV(42,aab_y,12,4-noob,0,0,0,0,0)
	aab2=MakeBoneV(54,aab_y,12,4-noob,0,0,0,0,0)
	aab3=MakeBoneV(66,aab_y,12,4-noob,0,0,0,0,0)
	aab4=MakeBoneV(78,aab_y,12,4-noob,0,0,0,0,0)
	aab5=MakeBoneV(90,aab_y,12,4-noob,0,0,0,0,0)
}

if _timer = 170 and noob = 0 or _timer = 235 and noob = 1
{
	aee=MakePlatform(70,355,48,4-noob,0,1,0,0,0,0)
	ae_y = battle_board.y+battle_board.down-20/2-5
	ae_y1 = battle_board.y+battle_board.down-45/2-5
	ae1 = MakeBoneV(42,ae_y,20,4-noob,0,0,0,0,0)
	ae2 = MakeBoneV(54,ae_y,20,4-noob,0,0,0,0,0)
	ae3 = MakeBoneV(66,ae_y,20,4-noob,0,0,0,0,0)
	ae4 = MakeBoneV(78,ae_y,20,4-noob,0,0,0,0,0)
	ae5 = MakeBoneV(90,ae_y,20,4-noob,0,0,0,0,0)
	aee1= MakeBoneV(18,ae_y1,45,4-noob,0,0,0,0,0)
	aee2= MakeBoneV(6,ae_y1,45,4-noob,0,0,0,0,0)
	aee3= MakeBoneV(114,ae_y1,45,4-noob,0,0,0,0,0)
	aee4= MakeBoneV(126,ae_y1,45,4-noob,0,0,0,0,0)
}

if _timer = 230 and noob = 0 or _timer = 310 and noob = 1
{
	off=MakePlatform(70,295,48,4-noob,0,1,0,0,0,0)
	ac_y = battle_board.y+battle_board.down-75/2-5
	ac1 = MakeBoneV(42,ac_y,75,4-noob,0,0,0,0,0)
	ac2 = MakeBoneV(54,ac_y,75,4-noob,0,0,0,0,0)
	ac3 = MakeBoneV(66,ac_y,75,4-noob,0,0,0,0,0)
	ac4 = MakeBoneV(78,ac_y,75,4-noob,0,0,0,0,0)
	ac5 = MakeBoneV(90,ac_y,75,4-noob,0,0,0,0,0)
}

if _timer = 280 and noob = 0
    oof=MakePlatform(90,355,48,4-noob,0,0,0,0,0,0)
if _timer = 300 and noob = 0 or _timer = 405 and noob = 1
{
	you_gay = instance_create_depth(130,battle_board.y-battle_board.up+90/2+5,0,battle_bullet_bone)
	you_gay.length = 90
	you_gay.hspeed = 4.5
}
if global.difficulty = 1
{
	if _timer = 520
		Battle_SetBoardSizeCubic(65,65,65,65)
	if _timer = 560
		Battle_EndTurn()
}

if global.difficulty != 1
{
	if _timer = 360
	{
		audio_play_sound(snd_ding,0,false)
		battle_enemy_sans._head_image = 7
		battle_platform.sticky = 0
		oof.sticky = 1
		battle_platform.move_x = -2
		battle_bullet_bone.hspeed = -2
		you_gay.color = 1
		Anim_Create(oof,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,355,-60,30)
		Anim_Create(battle_bullet_bone,"hspeed",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,-2,-2,120)
		Anim_Create(battle_platform,"move_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,-2,-2,105)
	}

	if _timer = 375
		battle_enemy_sans._head_image = 0

	if _timer = 420
	{
		Anim_Create(off,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,295,55,30)
		Anim_Create(ac1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ac_y,85,30)
		Anim_Create(ac2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ac_y,85,30)
		Anim_Create(ac3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ac_y,85,30)
		Anim_Create(ac4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ac_y,85,30)
		Anim_Create(ac5,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ac_y,85,30)
	}

	if _timer = 480
	{
		Anim_Create(aee,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,350,-55,30)
		Anim_Create(ae1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y,-25,30)
		Anim_Create(ae2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y,-25,30)
		Anim_Create(ae3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y,-25,30)
		Anim_Create(ae4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y,-25,30)
		Anim_Create(ae5,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y,-25,30)
		Anim_Create(ae1,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ae2,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ae3,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ae4,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ae5,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(aee1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,55,30)
		Anim_Create(aee2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,55,30)
		Anim_Create(aee3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,55,30)
		Anim_Create(aee4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,55,30)
	}

	if _timer = 510
	{
		Anim_Create(aa,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,305,40,30)
		Anim_Create(aaa1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aaa_y,40,30)
		Anim_Create(aaa2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aaa_y,40,30)
		Anim_Create(aaa3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aaa_y,40,30)
		Anim_Create(aaa4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aaa_y,40,30)
		Anim_Create(aaa5,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aaa_y,40,30)
		Anim_Create(aab1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aab_y,20,30)
		Anim_Create(aab2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aab_y,20,30)
		Anim_Create(aab3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aab_y,20,30)
		Anim_Create(aab4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aab_y,20,30)
		Anim_Create(aab5,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,aab_y,20,30)
		Anim_Create(aab1,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,12,38,30)
		Anim_Create(aab2,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,12,38,30)
		Anim_Create(aab3,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,12,38,30)
		Anim_Create(aab4,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,12,38,30)
		Anim_Create(aab5,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,12,38,30)
	}

	if _timer = 540
	{
		Anim_Create(ab,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,350,-55,30)
		Anim_Create(ab1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ab_y,-25,30)
		Anim_Create(ab2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ab_y,-25,30)
		Anim_Create(ab3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ab_y,-25,30)
		Anim_Create(ab4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ab_y,-25,30)
		Anim_Create(ab5,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ab_y,-25,30)
		Anim_Create(ab1,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ab2,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ab3,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ab4,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(ab5,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,20,55,30)
		Anim_Create(abb1,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,45,30)
		Anim_Create(abb2,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,45,30)
		Anim_Create(abb3,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,45,30)
		Anim_Create(abb4,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,ae_y1,45,30)
	}

	if _timer = 700
	{
		Battle_SetBoardSizeCubic(65,65,65,65,20)
		battle_soul.x = 320
		battle_soul.y = 320
		Battle_SoulEffect(battle_soul_blue)
	}

	if _timer = 720
	{
		Battle_SlamRight()
		MakeBoneWallRight(20,60,10,0)
		MakeBoneWallBottom(20,90,10,0)
	}

	if _timer = 760
		Battle_EndTurn()
}

