if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
}
if _timer = 45
{
	Battle_SetSoul(battle_soul_blue)
	Battle_SoulEffect(battle_soul_blue)
}

if _timer = 60
{
	bone_alpha_y = battle_board.y-battle_board.up+90/2+5
	bone_alpha1 = MakeBoneV(500,bone_alpha_y,90,-3,0,0,0,0,1)
	bone_alpha2 = MakeBoneV(512,bone_alpha_y,90,-3,0,0,0,0,1)
	bone_alpha3 = MakeBoneV(524,bone_alpha_y,90,-3,0,0,0,0,1)
	Anim_Create(bone_alpha1,"alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,1,60)
	Anim_Create(bone_alpha2,"alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,1,60)
	Anim_Create(bone_alpha3,"alpha",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,1,60)
}

if _timer >= 60 and _timer%4=0 and _timer < 760
{
	if _timer < 760 and global.difficulty != 1 or _timer < 470
	MakeBoneBottom(500,20,-3,0,0,0,1)
	if _timer >= 600 and global.difficulty != 1
	MakeBoneTop(500,20,-3,0,0,0,1)
}

if _timer = 90
{
	bone_1_top_y = battle_board.y-battle_board.up+70/2+5
	bone_1_bottom_y = battle_board.y+battle_board.up-20/2-5
	bone_11=MakeBoneV(589,bone_1_top_y,70,-3,0,0,0,0,1)
	bone_12=MakeBoneV(601,bone_1_top_y,70,-3,0,0,0,0,1)
	bone_13=MakeBoneV(613,bone_1_top_y,70,-3,0,0,0,0,1)
	platform_1=MakePlatform(600,355,40,-3,0,1,0,0,0,0)
	bone_111=MakeBoneV(589,bone_1_bottom_y,20,-3,0,0,0,0,1)
	bone_112=MakeBoneV(601,bone_1_bottom_y,20,-3,0,0,0,0,1)
	bone_113=MakeBoneV(613,bone_1_bottom_y,20,-3,0,0,0,0,1)
	Anim_Create(platform_1,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,355,-35,45,60)
	Anim_Create(bone_11,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bone_1_top_y,-17,45,60)
	Anim_Create(bone_12,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bone_1_top_y,-17,45,60)
	Anim_Create(bone_13,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bone_1_top_y,-17,45,60)
	Anim_Create(bone_11,"length",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,70,-35,45,60)
	Anim_Create(bone_12,"length",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,70,-35,45,60)
	Anim_Create(bone_13,"length",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,70,-35,45,60)
	Anim_Create(bone_111,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bone_1_bottom_y,-15,45,60)
	Anim_Create(bone_112,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bone_1_bottom_y,-15,45,60)
	Anim_Create(bone_113,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bone_1_bottom_y,-15,45,60)
	Anim_Create(bone_111,"length",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,20,30,45,60)
	Anim_Create(bone_112,"length",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,20,30,45,60)
	Anim_Create(bone_113,"length",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,20,30,45,60)
}

if _timer = 150
{
	MakeBoneTop(589,20,-6,0,0,0,1)
	MakeBoneTop(601,20,-6,0,0,0,1)
	MakeBoneTop(613,20,-6,0,0,0,1)
	bone_2_bottom_y = battle_board.y+battle_board.up-50/2-5
	MakePlatform(600,295,40,-3,0,1,0,0,0,0)
	MakeBoneV(589,bone_2_bottom_y,100,-3,0,0,0,0,1)
	MakeBoneV(601,bone_2_bottom_y,100,-3,0,0,0,0,1)
    MakeBoneV(613,bone_2_bottom_y,100,-3,0,0,0,0,1)
}

if _timer = 220
	MakePlatform(600,315,40,-4,0,1,0,0,0,0)


if _timer = 230 and global.difficulty != 1
    MakeBoneGapV(600,285,-6,20,1,0)
	
if _timer = 260
	MakePlatform(600,335,40,-3,0,1,0,0,0,0)
	
if _timer = 300
{
	MakeBoneTop(589,45,-3,0,0,0,1)
	MakeBoneTop(601,45,-3,0,0,0,1)
	MakeBoneTop(613,45,-3,0,0,0,1)
	MakePlatform(600,335,40,-3,0,1,0,0,0,0)
}

if _timer = 320
{
	MakeBoneTop(589,55,-3,0,0,0,1)
	MakeBoneTop(601,55,-3,0,0,0,1)
	MakeBoneTop(613,55,-3,0,0,0,1)
	MakePlatform(600,345,40,-3,0,1,0,0,0,0)
}

if _timer = 340
{
	MakeBoneTop(589,65,-3,0,0,0,1)
	MakeBoneTop(601,65,-3,0,0,0,1)
	MakeBoneTop(613,65,-3,0,0,0,1)
	MakePlatform(600,355,40,-3,0,1,0,0,0,0)
}

if _timer = 380
{
	MakeBoneTop(589,25,-3,0,0,0,1)
	MakeBoneTop(601,25,-3,0,0,0,1)
	MakeBoneTop(613,25,-3,0,0,0,1)
	MakePlatform(600,305,40,-3,0,1,0,0,0,0)
}

if global.difficulty = 1
{
	if _timer = 620
		Battle_SetBoardSizeCubic(65,65,65,65)
	if _timer = 660
		Battle_EndTurn()
}

if global.difficulty != 1
{

if _timer = 520
{	
	bone_3_bottom_y = battle_board.y+battle_board.down-90/2-5
	bone_31=MakeBoneV(600,bone_3_bottom_y,90,0,0,0,0,0,0)
	bone_32=MakeBoneV(612,bone_3_bottom_y,90,0,0,0,0,0,0)
	bone_33=MakeBoneV(624,bone_3_bottom_y,90,0,0,0,0,0,0)
	bone_34=MakeBoneV(636,bone_3_bottom_y,90,0,0,0,0,0,0)
	bone_35=MakeBoneV(648,bone_3_bottom_y,90,0,0,0,0,0,0)
	Anim_Create(bone_31,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_31.x,-430,60)
	Anim_Create(bone_32,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_32.x,-430,60)
	Anim_Create(bone_33,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_33.x,-430,60)
	Anim_Create(bone_34,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_34.x,-430,60)
	Anim_Create(bone_35,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_35.x,-430,60)
	
	Anim_Create(bone_31,"y",ANIM_TWEEN.BOUNCE,ANIM_EASE.OUT,bone_31.y,-30,60,70)
	Anim_Create(bone_32,"y",ANIM_TWEEN.BOUNCE,ANIM_EASE.OUT,bone_32.y,-30,60,70)
	Anim_Create(bone_33,"y",ANIM_TWEEN.BOUNCE,ANIM_EASE.OUT,bone_33.y,-30,60,70)
	Anim_Create(bone_34,"y",ANIM_TWEEN.BOUNCE,ANIM_EASE.OUT,bone_34.y,-30,60,70)
	Anim_Create(bone_35,"y",ANIM_TWEEN.BOUNCE,ANIM_EASE.OUT,bone_35.y,-30,60,70)
	
	Anim_Create(bone_31,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,170,430,90,130)
	Anim_Create(bone_32,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,182,430,90,130)
	Anim_Create(bone_33,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,194,430,90,130)
	Anim_Create(bone_34,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,206,430,90,130)
	Anim_Create(bone_35,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,218,430,90,130)
}

if _timer = 540
	Battle_SlamUp()

if _timer = 620
{
	audio_play_sound(snd_ding,0,false)
	bone_31.color = 2
	bone_32.color = 2
	bone_33.color = 2
	bone_34.color = 2
	bone_35.color = 2
	bone_31.auto_destroy = 1
	bone_32.auto_destroy = 1
	bone_33.auto_destroy = 1
	bone_34.auto_destroy = 1
	bone_35.auto_destroy = 1
}

if _timer = 630
{
	MakeBoneTop(589,50,-3,0,0,0,1)
	MakeBoneTop(601,50,-3,0,0,0,1)
	MakeBoneTop(613,50,-3,0,0,0,1)
	MakePlatform(600,325,40,-3,0,1,180,0,0,0)
}

if _timer = 678
{
	MakeBoneBottom(589,40,-3,0,0,0,1)
	MakeBoneBottom(601,40,-3,0,0,0,1)
	MakeBoneBottom(613,40,-3,0,0,0,1)
	MakePlatform(600,315,40,-3,0,1,180,0,0,0)
}

if _timer = 726
	MakePlatform(600,300,40,-3,0,1,180,0,0,0)

if _timer = 800
{
	bone_41=MakeBoneV(150,320,120,0,0,0,0,0,0)
	bone_42=MakeBoneH(320,240,310,0,0,0,0,0,0)
	Anim_Create(bone_41,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_41.x,295,220)
	Anim_Create(bone_42,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,bone_42.y,110,220)
}

if _timer = 860
{
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
}

if _timer >= 980 and _timer%20=0 and _bone < 12
{
	if _bone_sequence = 1
	{
		MakeBoneRight(240,20,3,1,0,0,1)
		_bone_sequence = 2
	}
	else if _bone_sequence = 2
	{
		MakeBoneRight(240,20,3,2,0,0,1)
		_bone_sequence = 1
	}
	_bone++
}

if _delay_end = 120
{
	Anim_Create(bone_41,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,445,-295,60)
	Anim_Create(bone_42,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,350,-115,60)
}

if _delay_end = 150
    Battle_SetBoardSize(65,65,65,65)
	
if _delay_end = 180
    Battle_EndTurn()
}