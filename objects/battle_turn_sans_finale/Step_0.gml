if (battle_enemy_sans.x < -100)
{
    battle_enemy_sans.x = 700
    battle_enemy_sans._head_image = choose(0, 1, 2, 3, 4, 5)
    battle_enemy_sans.sweat_image = 3
}

if _timer = 60
{
	Battle_SlamLeft()
	MakeBoneWallLeft(25,60,20,0)
}

if _timer = 135
{
	instance_destroy(battle_bullet_bone)
	Battle_SetSansAction(SANS_ACTION.RIGHT)
	Battle_SetSoul(battle_soul_red)
	battle_soul_red.image = spr_battle_soul_blue
	battle_soul_red.image_angle = -90
    battle_soul.move = false
	Battle_SetBoardSize(50,50,320,320,20)
	Anim_Create(battle_soul,"x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,battle_soul.x,80-battle_soul.x,60)
	Anim_Create(battle_soul_red,"image_angle",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,-90,choose(-180,180),60)
	Anim_Create(battle_enemy_sans,"hspeed",ANIM_TWEEN.CIRC,ANIM_EASE.IN_OUT,8,-22,120)
    with (battle_enemy_sans)
    {
        action = 2
        _action_step = 0
        alarm[0] = 125
    }
}

if _timer = 200
{
	MakeBoneSeaV(650,5,-10,0,0,200,20,1.5,0.8)
	Anim_Create(battle_bullet_bone,"hspeed",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,-1,-11,900)
}

if _timer >= 200 and _timer < 1260
{
	with battle_bullet_bone
	{
		if x < 0
		instance_destroy()
	}
}

if _timer = 1260
    instance_destroy(battle_bullet)

if _timer = 1300
{
    alarm[4] = 1
	battle_soul.move = true
}

if _timer = 1980
	alarm[4] = -1


if _timer = 2000
{
	Anim_Destroy(battle_bullet_bone,"color")
	battle_bullet_bone.color = 1
	audio_play_sound(snd_ding,0,false)
	var space = 0
	var gapz = 0
	Battle_SetSoul(battle_soul_blue)
	battle_soul_blue._gravity_fall = 0
	battle_soul_blue.dir = DIR.RIGHT
    battle_soul.move = false
	repeat(30)
	{
		MakeBoneGapV(900+space,320,-10,48-gapz,0,0)
		space+=20
		gapz+=1
	}
}

if _timer = 2160
{
	Anim_Create(battle_soul_blue,"_gravity_fall",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,0.15,150)
    Battle_SetBoardSize(50,50,330,283,60)
}
	
if _timer = 2250
{
	battle_enemy_sans._head_image = 0
    battle_enemy_sans.hspeed = 0
    Battle_SetSansAction(SANS_ACTION.RIGHT)
	MakeBoneWallRight(60,60,300,0,15)
}

if _timer = 2350
{
	Battle_FlashOn()
	battle_soul_blue.dir = DIR.DOWN
	Battle_SetBoardSizeCubic(65,65,65,65,1)
}

if _timer = 2400
{
	battle_enemy_sans.x = random_range(60,580)
	battle_soul.moveable = true
	battle_soul.x = 320
	battle_soul.y = 376
	Battle_FlashOff()
	var space = 0
	var delay = 0
	repeat(3)
	{
		audio_stop_sound(snd_gb_charge)
		MakeGB(160,320-space,160,320-space,0,0,delay,3,3,5,1,0)
		MakeGB(480,320-space,480,320-space,-180,-180,delay,3,3,5,1,0)	
		MakeGB(160,450-space,160,450-space,0,0,27+delay,3,3,5,1,0)
		MakeGB(480,450-space,480,450-space,-180,-180,27+delay,3,3,5,1,0)
		space+=40
		delay+=3
		audio_stop_sound(snd_gb_charge)
	}
}

if _timer = 2470
{
	Battle_FlashOn()
	battle_soul.moveable = false
}

if _timer = 2500
{
	battle_enemy_sans.x = random_range(60,580)
	battle_soul_blue.dir = DIR.UP
	battle_soul.moveable = true
	battle_soul.x = 264
	battle_soul.y = 264
	Battle_FlashOff()
	var space = 0
	var delay = 0
	repeat(3)
	{
		audio_stop_sound(snd_gb_charge)
		MakeGB(320+space,160,320+space,160,-90,-90,delay,3,3,5,1,0)
		MakeGB(320+space,480,320+space,480,90,90,delay,3,3,5,1,0)
		MakeGB(160,320+space,160,320+space,0,0,delay,3,3,5,1,0)
		MakeGB(480,320+space,480,320+space,-180,-180,delay,3,3,5,1,0)
		MakeGB(180+space,160,180+space,160,-90,-90,27+delay,3,3,5,1,0)
		MakeGB(180+space,480,180+space,480,90,90,27+delay,3,3,5,1,0)
		MakeGB(160,180+space,160,180+space,0,0,27+delay,3,3,5,1,0)
		MakeGB(480,180+space,480,180+space,-180,-180,27+delay,3,3,5,1,0)
		space+=40
		delay+=3
		audio_stop_sound(snd_gb_charge)
	}
}

if _timer = 2570
{
	Battle_FlashOn()
	battle_soul.moveable = false
}

if _timer = 2600
{
	battle_enemy_sans.x = random_range(60,580)
	battle_soul_blue.dir = DIR.RIGHT
	battle_soul.moveable = true
	battle_soul.x = 376
	battle_soul.y = 376
	Battle_FlashOff()
	var space = 0
	var delay = 0
	repeat(3)
	{
		audio_stop_sound(snd_gb_charge)
		MakeGB(320-space,160,320-space,160,-90,-90,delay,3,3,5,1,0)
		MakeGB(320-space,480,320-space,480,90,90,delay,3,3,5,1,0)
		MakeGB(160,320-space,160,320-space,0,0,delay,3,3,5,1,0)
		MakeGB(480,320-space,480,320-space,-180,-180,delay,3,3,5,1,0)
		MakeGB(460-space,160,460-space,160,-90,-90,27+delay,3,3,5,1,0)
		MakeGB(460-space,480,460-space,480,90,90,27+delay,3,3,5,1,0)
		MakeGB(160,460-space,160,460-space,0,0,27+delay,3,3,5,1,0)
		MakeGB(480,460-space,480,460-space,-180,-180,27+delay,3,3,5,1,0)
		space+=40
		delay+=3
		audio_stop_sound(snd_gb_charge)
	}
}

if _timer = 2670
{
	Battle_FlashOn()
	battle_soul.moveable = false
}

if _timer = 2700
{
	battle_enemy_sans.x = 320
	battle_soul_blue.dir = DIR.LEFT
	battle_soul.moveable = true
	battle_soul.x = 264
	battle_soul.y = 320
	MakeBoneWallLeft(70,60,20,0)
	Battle_FlashOff()
	var space = 0
	var delay = 0
	repeat(3)
	{
		audio_stop_sound(snd_gb_charge)
		MakeGB(320+space,160,320+space,160,-90,-90,delay,3,3,5,1,0)
		MakeGB(320+space,480,320+space,480,90,90,delay,3,3,5,1,0)
		space+=40
		delay+=3
		audio_stop_sound(snd_gb_charge)
	}
}

if _timer = 2770
{
	battle_enemy_sans._wiggle = 1
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
	alarm[5] = 1
}

if _timer = 3370
{
	dir = -1
	alarm[5] = -1
	alarm[5] = 30
}

if _timer = 4000
{
	gb_2 = false
	direc = 11.5
	delay_gb = 3
	Anim_Create(id,"delay_gb",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,3,12,600,600)
}

if _timer = 5200
{
	alarm[5] = -1
	alarm[6] = 20
	global.slam_power = 30
	global.slam_damage = true
	Anim_Create(battle_gradient,"vspeed",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,0,10,180)
	global.deadable = false
}

if _timer = 6700
{
	audio_sound_gain(bgm_sans,0,10000)
	audio_sound_gain(bgm_sans_2,0,10000)
	audio_sound_gain(bgm_sans_3,0,10000)
	alarm[6] = -1
	alarm[7] = -1
	alarm[8] = -1
	instance_destroy(battle_gradient)
}

if _timer = 6760
    Battle_SlamUp()

if _timer = 6820
{
	Battle_SetSansAction(SANS_ACTION.DOWN)
	battle_enemy_sans.alarm[0] = 25
	battle_soul_blue.dir = DIR.DOWN
	battle_soul_blue._gravity_fall = 0.02
}

if _timer = 7000
{
	_timer = 7001
	Battle_SetSoul(battle_soul_red)
	Battle_SoulEffect(battle_soul_red)
	Battle_SetSansAction(SANS_ACTION.STATIC)
	battle_soul.moveable = false
	battle_soul.x = 320
	battle_soul.y = 320
	sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
	sans.text = "{voice 2}{font 3}{speed 6}{sans_sweat 3}huff...{sleep 20} puff...{pause}{clear}{speed 2}all right.{sleep 20}&that's it.{pause}{clear}{sans_body 1}it's time for my&{color_text `red`}special attack{color_text `black`}.{pause}{clear}{sans_head 3}are you ready?{pause}{clear}{sans_head 4}here goes nothing."
}

if _timer = 7002
{
    battle_enemy_sans._head_image = 6
	battle_enemy_sans._body_image = 0
}

if _timer = 7600
{
	_timer = 7601
	sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
	sans.text = "{voice 2}{font 3}{sans_head 1}yep.{pause}{clear}that's right.{pause}{clear}{sans_head 3}it's literally&nothing.{pause}{clear}{sans_head 1}and it's not gonna&be anything,{sleep 20}either.{pause}{clear}{sans_head 4}heh heh heh...&{sleep 20}ya get it?{pause}{clear}{sans_head 1}i know i can't&beat you.{pause}{clear}{sans_head 4}one of your turn...{pause}{clear}{sans_head 2}you're just gonna&kill me.{pause}{clear}{sans_head 1}so, {sleep 20}uh.{pause}{clear}{sans_head 4}i've decided...{pause}{clear}{sans_head 2}it's not gonna BE&your turn.&{sleep 20}ever.{pause}{clear}{sans_head 3}i'm just gonna&keep having MY&turn until you&give up.{pause}{clear}{sans_head 5}even if it means&we have to stand&here until the&end of time.{pause}{clear}{sans_head 1}capiche?"
}

if _timer = 7602
{
    battle_enemy_sans._head_image = 6
	battle_enemy_sans._body_image = 0
}

if _timer = 8200
{
	_timer = 8201
	sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
	sans.text = "{voice 2}{font 3}you'll get bored&here.{pause}{clear}{sans_head 1}if you haven't&gotten bored already,&{sleep 20}i mean.{pause}{clear}{sans_head 5}and then, {sleep 20}you'll&finally quit."
}

if _timer = 8202
    battle_enemy_sans._head_image = 6

if _timer = 8800
{
	_timer = 8801
	sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
	sans.text = "{voice 2}{font 3}{sans_head 5}i know your type.{pause}{clear}{sans_head 1}you're, {sleep 20}uh, {sleep 20}very&determined, {sleep 20}aren't&you?{pause}{clear}{sans_head 4}you'll never give&up, {sleep 20}even if&there's, {sleep 20}uh...{pause}{clear}{sans_head 3}absolutely NO&benefit to&persevering&whatsoever.{pause}{clear}{sans_head 1}if i can make&that clear.{pause}{clear}{sans_head 4}no matter what,&{sleep 20}you'll just keep&going.{pause}{clear}{sans_head 6}not out of any&desire for good&or evil...{pause}{clear}{sans_head 3}but just because&you think you&can.{pause}{clear}{sans_head 1}and because you&''can''...{pause}{clear}{sans_head 6}... you ''have to.''"
}

if _timer = 9400
{
	_timer = 9401
	sans = instance_create_depth(420, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
	sans.text = "{voice 2}{font 3}but now, {sleep 20}you've&reached the end.{pause}{clear}{sans_head 4}there is nothing&left for you now.{pause}{clear}{sans_head 1}so, {sleep 20}uh,{sleep 20} in my&personal opinion...{pause}{clear}{sans_head 3}the most&''determined''&thing you can&do here?{pause}{clear}{sans_head 1}is to, {sleep 20}uh,&{sleep 20}completely give&up.{pause}{clear}{sans_head 3}and... {sleep 20}(yawn){sleep 20}&do literally&anything else."
}

if _timer = 10000
{
	battle_enemy_sans._head_sprite = spr_sans_head_hurt
	battle_enemy_sans._head_image = 0
	battle_enemy_sans.sweat_image = 2
}

if _timer = 10600
{
	battle_enemy_sans._head_image = 1
	battle_enemy_sans.sweat_image = 1
}

if _timer = 11200
{
	battle_enemy_sans._head_image = 2
	battle_enemy_sans.sweat_image = 0
}

if _timer = 11800
{
	global.phase = 3
	window_set_caption("Legends say nobody give this part a f***...")
	battle_soul.moveable = true
	global.sans_is_died = true
	battle_enemy_sans.sans_is_alive = false
	battle_enemy_sans._wiggle = true
	battle_enemy_sans._head_image = 3
	battle_enemy_sans.yes_board_y = false
	battle_enemy_sans.alarm[3] = 1
	alarm[8] = 1
}