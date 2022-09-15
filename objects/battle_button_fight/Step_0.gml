event_inherited();

if global.sans_is_died = true
{
	if place_meeting(x,y,battle_soul)
	{
		image_index = 1
		if _snd = "played"{
			audio_play_sound(snd_menu_switch,0,false)
			_snd = "stanby"
		}
	}else{
			image_index = 0
			_snd = "played"
	}
	if place_meeting(x,y,battle_soul){
		if image_xscale < 1.2
			image_xscale += 0.05
		if image_yscale < 1.2
			image_yscale += 0.05
		if sat < 255
			sat+=40;
	}else if !place_meeting(x,y,battle_soul){
		if image_xscale > 1
			image_xscale -= 0.05
		if image_yscale > 1
			image_yscale -= 0.05
		if sat > 105
			sat-=40;
	}
	if place_meeting(x,y,battle_soul) and Input_IsPressed(INPUT.CONFIRM) and _check = false{
		_check = true
		battle_turn_sans_finale.alarm[8] = -1
		battle_soul.moveable = false
		battle_enemy_sans._wiggle = false
		var ENEMY = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())
    	var X = Battle_GetEnemyCenterPosX(ENEMY)
    	var Y = Battle_GetEnemyCenterPosY(ENEMY)
    	instance_create_depth(X, Y, 0, battle_menu_fight_anim_knife)
		with battle_enemy_sans{
			Anim_Create(id, "x", ANIM_TWEEN.CIRC, ANIM_EASE.OUT, 320, -120, 30)
			sweat_image = 0
			_body_image = 1
			_head_image = 4
			alarm[3] = -1
			alarm[4] = -1
			alarm[5] = -1
		}
		image_index = 1
	}
	if _check = true and !instance_exists(battle_dialog_enemy) 
		timer++
	if timer = 30
	{
		timer = 31
		battle_enemy_sans.sans_is_alive = false
		b = instance_create_depth(330, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
		b.text = "{skippable false}{voice 2}{font 3}heh,{sleep 20} didja&really think you&would be able{end}"
	}
	if timer = 32
	{
		var ENEMY = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())
		var X = (Battle_GetEnemyCenterPosX(ENEMY) - 120)
		var Y = Battle_GetEnemyCenterPosY(ENEMY)
		knife = instance_create_depth(X, Y, 0, battle_menu_fight_anim_knife)
		knife.image_xscale = 2
		knife.image_yscale = 2
		knife.image_angle = 45
		battle_enemy_sans._head_image = 5
	}
	if timer = 92
	{
		audio_play_sound(snd_harddamage,0,false)

		fader.color = c_red
		fader.alpha = 1
		Anim_Create(fader,"alpha",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,1,-1,60,30)

		var ENEMY = Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())
		var X = Battle_GetEnemyCenterPosX(ENEMY) - 120
		var Y = Battle_GetEnemyCenterPosY(ENEMY) - 60
		a = instance_create_depth(X, Y, 0, battle_damage)
		a.damage = 99999999
		a.bar_visible = 0
		a.display_time = 240
		instance_create_depth(0, 0, 0, sans_shaker)
		battle_enemy_sans._body_sprite = spr_sans_body_hurt
		battle_enemy_sans._legs_sprite = spr_sans_legs_hurt
		battle_enemy_sans._body_image = 0
		battle_enemy_sans._body_init_y = -16
		battle_enemy_sans._head_init_y = -16
	}
	if timer = 512
	{
		timer = 513
		battle_enemy_sans._wiggle = true
		battle_enemy_sans._body_sprite = spr_sans_body_hurt
		b = instance_create_depth(330, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
		b.text = "{skippable false}{voice 2}{font 3}{speed 4}{sans_head 10}{sans_body 1}{sleep 10}.{sleep 10}.{sleep 10}.{pause}{clear}{sans_head 9}{sleep 10}.{sleep 10}.{sleep 10}.{pause}{clear}{sans_head 11}{sleep 10}.{sleep 10}.{sleep 10}.{pause}{clear}{sans_head 10}so{sleep 10}.{sleep 10}.{sleep 10}.{pause}{clear}guess that's it,&{sleep 20}huh?{pause}{clear}{sans_head 11}{sleep 10}.{sleep 10}.{sleep 10}.{pause}{clear}{sans_head 10}just...{pause}{clear}don't say i&didn't warn you."
	}
	if timer = 514
	{
		battle_enemy_sans._legs_sprite = spr_sans_legs
		battle_enemy_sans._body_sprite = spr_sans_body_hurt
		battle_enemy_sans._body_init_y = -21
		battle_enemy_sans._head_init_y = -21
		battle_enemy_sans._wiggle = 0
	}
	if timer = 694
	{
		timer = 695
		battle_enemy_sans._body_sprite = spr_sans_body_hurt
		battle_enemy_sans._body_image = 1
		b = instance_create_depth(330, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
		b.text = "{skippable false}{voice 2}{font 3}{speed 4}welp.{pause}{clear}{sans_head 8}{sans_body 2}i'm going to&grillby's."
	}
	if timer = 696
	{
		battle_enemy_sans._body_sprite = spr_sans_body_hurt
		battle_enemy_sans._body_image = 1
		battle_enemy_sans._head_image = 10
		Anim_Create(battle_enemy_sans,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,200,-50,60)
		Anim_Create(battle_enemy_sans,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,150,-50,60,120)
		Anim_Create(battle_enemy_sans,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,100,-50,60,240)
		Anim_Create(battle_enemy_sans,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,50,-50,60,360)
		Anim_Create(battle_enemy_sans,"x",ANIM_TWEEN.QUAD,ANIM_EASE.OUT,0,-100,60,480)
	}
	if timer = 1296
	{
		timer = 1297
		b = instance_create_depth(60, (battle_enemy_sans.y - 100), 0, battle_dialog_enemy)
		b.text = "{skippable false}{voice 2}{font 3}{speed 4}papyrus, {sleep 30}do you&want anything?"
	}
	if timer = 1477
	{
		audio_play_sound(snd_vaporize,0,false)
		Player_SetLv(20)
		Player_SetHpMax(99)
		fader.color = c_black

		Anim_Create(fader,"alpha",0,0,0,1,300)
	}
	if timer = 1837
	{
		room_goto(room_logo)
		fader.alpha = 0
	}
}