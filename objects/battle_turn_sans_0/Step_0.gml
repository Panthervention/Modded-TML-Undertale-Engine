if _timer = 1
{
	Battle_SlamDown()
	MakeBoneWallBottom(29,55,120,0)
}
if _timer = 30
{
	Battle_SlamUp()
	MakeBoneWallTop(30,55,90,0)
}
if _timer = 60
{
	Battle_SlamLeft()
	MakeBoneWallLeft(30,55,60,0)
}
if _timer = 90
{
	Battle_SlamRight()
	MakeBoneWallRight(30,55,30,0)
}
if _timer = 100
{
	MakeGB(320,0,320,240,0,-90,50,2,2,20,25,0)
	MakeGB(640,320,400,320,-90,-180,50,2,2,20,25,0)
	MakeGB(320,480,320,400,-180,-270,50,2,2,20,25,0)
	MakeGB(0,320,240,320,-90,0,50,2,2,20,25,0)
}
if _timer = 110
{
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
}

if _timer = 200
{
	MakeBoneSeaH(320,20,8,0,0,30,26,3,3)
}
if _timer = 240
	MakeGB(280,480,270,430,0,90,80,2,2,30,25,0)
if _timer = 280
    MakeGB(360,0,370,210,-180,-90,40,2,2,30,25,0)

if _timer = 400
{
	Battle_SlamUp()
	Battle_SoulEffect(battle_soul_blue,DIR.UP)
}

if _timer = 405
{
	MakeGB(0,270,200,270,-90,0,20,2,2,30,20,0)
	MakeGB(640,270,440,270,90,180,20,2,2,30,20,0)
}

if _timer = 450
{
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
	MakeGB(0,0,200,200,45,-45,20,2,2,20,25,0)
	MakeGB(640,0,440,200,-45,-135,20,2,2,20,25,0)
	MakeGB(640,480,440,440,-135,-225,20,2,2,20,25,0)
	MakeGB(0,480,200,440,-225,-315,20,2,2,20,25,0)
}

if _timer = 470
{
	MakeGB(280,0,280,150,-180,-90,0,2,2,20,25,0)
	MakeGB(360,0,360,150,-180,-90,0,2,2,20,25,0)
}

if _timer = 500
{
	GB_Fucker_1 = MakeGB(320,0,320,180,-90,-90,40,3,3,40,25,0) //1
	GB_Fucker_2 = MakeGB(320,480,320,460,90,90,40,3,3,40,25,0) //3
	GB_Fucker_3 = MakeGB(640,320,460,320,-90,-180,40,3,3,40,25,0)//2
	GB_Fucker_4 = MakeGB(0,320,180,320,-90,0,40,3,3,40,25,0)   //4
}

if _timer = 530
{
	audio_play_sound(snd_ding,0,false)
	cho = choose("oof","oof extra","oof ultimate extra","wtf ultimate extra")
	if cho = "oof"
	{
		Anim_Create(GB_Fucker_3,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_3.y,-40,30)
		Anim_Create(GB_Fucker_4,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_4.y,40,30)
		GB_Fucker_3.blend = choose(1,2)
		GB_Fucker_4.blend = choose(1,2)
	}
	else if cho = "oof extra"
	{
		Anim_Create(GB_Fucker_1,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_1.x,-40,30)
		Anim_Create(GB_Fucker_2,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_2.x,40,30)
		GB_Fucker_1.blend = choose(1,2)
		GB_Fucker_2.blend = choose(1,2)
	}
	else if cho = "oof ultimate extra"
	{
		Anim_Create(GB_Fucker_1,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_1.x,-50,30)
		Anim_Create(GB_Fucker_2,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_2.x,50,30)
		Anim_Create(GB_Fucker_3,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_3.y,-50,30)
		Anim_Create(GB_Fucker_4,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_4.y,50,30)
	}
	else if cho = "wtf ultimate extra"
	{
		Anim_Create(GB_Fucker_1,"image_angle",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_1.image_angle,-45,30)
		Anim_Create(GB_Fucker_2,"image_angle",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_2.image_angle,-45,30)
		Anim_Create(GB_Fucker_3,"image_angle",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_3.image_angle,-45,30)
		Anim_Create(GB_Fucker_4,"image_angle",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_4.image_angle,-45,30)
		Anim_Create(GB_Fucker_1,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_1.x,140,30)
		Anim_Create(GB_Fucker_2,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_2.x,-140,30)
		Anim_Create(GB_Fucker_3,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_3.y,140,30)
		Anim_Create(GB_Fucker_4,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,GB_Fucker_4.y,-140,30)
	}
}

if _timer = 600
{
	Battle_SetSansAction(SANS_ACTION.STATIC)
	sans = instance_create_depth(420, 120, 0, battle_dialog_enemy)
    sans.text = "{skippable false}{voice 2}{font 3}{sans_head 1}{sans_body 1}now i understand why&people don't use&their strongest attack&first!"
}
if _timer > 600
{
	if !instance_exists(battle_dialog_enemy)
	{
		battle_enemy_sans._head_image = 0
		Battle_SetSansAction(SANS_ACTION.IDLE)
	    Battle_EndTurn()
		switch Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC) 
		{
		case 0:
			if !audio_is_playing(bgm_sans)
				audio_play_sound(bgm_sans,0,true);
			break;
		case 1:
			if !audio_is_playing(bgm_sans_2)
				audio_play_sound(bgm_sans_2,0,true);
			break;
		case 2:
			if !audio_is_playing(bgm_sans_3)
				audio_play_sound(bgm_sans_3,0,true);
			break;
		}
	}
}