if _timer = 1
{
    battle_enemy_sans._head_image = 0
	battle_enemy_sans.action = 0
	battle_enemy_sans._body_image = 0
	battle_soul.moveable = false
	battle_soul.y = 270
	battle_soul.x = 320
	battle_soul.visible = true
}

if _timer = 5
{
	platform_1 = MakePlatform(320,390,48,0,0,0,0,0,0)
	platform_2 = MakePlatform(320,390,48,0,0,0,0,0,0)
	Anim_Create(platform_1,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,390,-60,60)
	Anim_Create(platform_2,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,390,-60,60)
}

if _timer = 90
{
	MakeBoneV(490,310,140,-5,0,4,0,0,1)
	MakeBoneV(150,310,140,5,0,4,0,0,1)
}

if _timer = 125
{
	battle_enemy_sans._body_image = 1
	battle_soul.moveable = true
}

if _timer >= 90 and _timer%3=0 and _repeat = true
{
	MakeBoneTop(150,10,4,0,0,0,1)
	MakeBoneBottom(490,10,-4,0,0,0,1)
}

if _timer = 150
{
	battle_enemy_sans._body_image = 0
	alarm[0] = 1
}

if _timer >= 150 and _repeat = true
{
	platform_x += 0.025
	platform_1.x = 320 + (sin(platform_x)*80)
	platform_2.x = 320 - (sin(platform_x)*80)
}

if _timer >= 150 and _timer%25=0 and _repeat = true
    MakeBoneV(320,400,20,0,-2.5,0,0,0,1)

if _timer = 2000
{
	alarm[0]=-1
	alarm[1]=-1
	_repeat = false
	audio_play_sound(snd_ding,0,false)
	Anim_Create(platform_1,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,330,60,120)
	Anim_Create(platform_2,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,330,60,120)
}

if _timer = 2140
{
	Battle_SetBoardSizeCubic(65,65,65,65,60)
	if global.difficulty = 1 alarm[3] = 90
}


if _timer = 2220 and global.difficulty != 1
{
	camera.angle = 0	
	a = instance_create_depth(320, 320, 0, battle_bone_stab_exclaimation)
	a.duration = 80
	a.x1 = battle_board.x - battle_board.left + 2
	a.y1 = battle_board.y - battle_board.up + 2
	a.x2 = battle_board.x + battle_board.right - 3
	a.y2 = battle_board.y + battle_board.down - 3
    a.x3 = battle_board.x - battle_board.left + 2
	a.y3 = battle_board.y - battle_board.up + 2
	a.xscale = 127
	a.yscale = 127
	alarm[2] = 80
}