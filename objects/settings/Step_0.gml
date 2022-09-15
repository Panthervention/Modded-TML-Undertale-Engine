if _setting = "OFF" and _soul_alpha = 1 and _soul_x = 200 and x = 0
{
	switch _menu_opt
	{
		case 1:
			_menu_col_1 = c_yellow;
			_menu_col_2 = c_white;
			_menu_col_3 = c_white;
			_menu_col_4 = c_white;
			break;
			
		case 2:
			_menu_col_1 = c_white;
			_menu_col_2 = c_yellow;
			_menu_col_3 = c_white;
			_menu_col_4 = c_white;
			break;
			
		case 3:
			_menu_col_1 = c_white;
			_menu_col_2 = c_white;
			_menu_col_3 = c_yellow;
			_menu_col_4 = c_white;
			break;
		
		case 4:
			_menu_col_1 = c_white;
			_menu_col_2 = c_white;
			_menu_col_3 = c_white;
			_menu_col_4 = c_yellow;
			break;
	}
	if Input_IsPressed(INPUT.DOWN)
	{
		switch _menu_opt
		{
			case 1:
				_menu_opt = 2;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,156,40,10);
				break;
			
			case 2:
				_menu_opt = 3;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,196,40,10);
				break;
			
			case 3:
				_menu_opt = 4;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,236,40,10);
				break;
				
			case 4:
				_menu_opt = 1;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,276,-120,10);
				break;
		}
		audio_play_sound(snd_menu_switch,0,0);
	}
	if Input_IsPressed(INPUT.UP)
	{
		switch _menu_opt
		{
			case 1:
				_menu_opt = 4;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,156,120,10);
				break;
			case 4:
				_menu_opt = 3;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,276,-40,10);
				break;
			case 3:
				_menu_opt = 2;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,236,-40,10);
				break;			
			case 2:
				_menu_opt = 1;
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,196,-40,10);
				break;
		}
		audio_play_sound(snd_menu_switch,0,0);
	}
	if Input_IsPressed(INPUT.CONFIRM)
	{
		switch _menu_opt
		{
			case 1:
			if _menu_col_1 = c_yellow
			{
				global.phase = 1;
				room_goto_next();
				var attempt_count = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT);
				Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT,attempt_count+1);
				Flag_Save(FLAG_TYPE.DYNAMIC);
				audio_play_sound(snd_menu_confirm,0,0);
				audio_stop_sound(bgm_menu);
			}
			break;
			
			case 2:
			if _menu_col_2 = c_yellow
			{
				global.phase = 2;
				global.kr_activation = true;
				room_goto_next();
				var attempt_count = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT);
				Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT,attempt_count+1);
				Flag_Save(FLAG_TYPE.DYNAMIC);
				audio_play_sound(snd_menu_confirm,0,0);
				audio_stop_sound(bgm_menu);
			}
			break;
			
			case 3:
			if _menu_col_3 = c_yellow
			{
				_setting = "ON";
				_menu_col_1 = c_white;
				_menu_col_2 = c_white;
				_menu_col_3 = c_white;
				_menu_col_4 = c_white;
				_setting_opt = 1;
				Anim_Create(id,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,-640,90);
				Anim_Create(id,"_soul_alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,1,-1,15);
				Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,156,0,1,120);
				Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,79,30,120);
				Anim_Create(id,"_soul_alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,1,20,120);
				audio_play_sound(snd_menu_confirm,0,0);
			}
			break;
			
			case 4:
			if _menu_col_4 = c_yellow
			{
				_setting = "CREDITS";
				_menu_col_1 = c_white;
				_menu_col_2 = c_white;
				_menu_col_3 = c_white;
				_menu_col_4 = c_white;
				_setting_opt = 1;
				Anim_Create(id,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,-480,90);
				Anim_Create(id,"_soul_alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,1,-1,15);
				Anim_Create(id,"alpha_credits",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,1,20,120);
				audio_play_sound(snd_menu_confirm,0,0);
			}
			break;
		}
	}
}
else if _setting = "ON" and x = -640 and _soul_alpha = 1 and _soul_x = 79
{	
	if _setting_lock != true
	{
		if Input_IsPressed(INPUT.DOWN)
		{
			switch _setting_opt
			{
				case 1:
					_setting_opt = 2;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,156,40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;			
				case 2:
					_setting_opt = 3;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,196,40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;			
				case 3:
					_setting_opt = 4;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,236,40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;				
				case 4:
					_setting_opt = 5;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,276,40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;				
				case 5:
					_setting_opt = 6;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,316,40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;
				case 6:
					_setting_opt = 7;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,356,40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;
			}
		}
		if Input_IsPressed(INPUT.UP)
		{
			switch _setting_opt
			{
				case 7:
					_setting_opt = 6;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,396,-40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;					
				case 6:
					_setting_opt = 5;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,356,-40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;				
				case 5:
					_setting_opt = 4;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,316,-40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;		
				case 4:
					_setting_opt = 3;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,276,-40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;			
				case 3:
					_setting_opt = 2;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,236,-40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;				
				case 2:
					_setting_opt = 1;
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,196,-40,10);
					audio_play_sound(snd_menu_switch,0,0);
					break;
			}
		}
		if Input_IsPressed(INPUT.CONFIRM)
		{
			switch _setting_opt
			{
				case 1:
					_setting_lock = true;
					_setting_col_1 = c_yellow;
					_opt_col_1 = c_yellow;
					audio_play_sound(snd_menu_confirm,0,0);
					break;
				case 2:
					_setting_lock = true;
					_setting_col_2 = c_yellow;
					if noob = "Normal" _opt_col_2 = c_yellow;
					else if noob = "Noob" _opt_col_2 = RGB;
					else if noob = "No Heal" _opt_col_2 = c_red;
					audio_play_sound(snd_menu_confirm,0,0);
					break;
				case 3:
					_setting_lock = true;
					_setting_col_3 = c_yellow;
					if border_mode = "Corridor" _opt_col_3 = RGB;
					else _opt_col_3 = c_yellow;
					audio_play_sound(snd_menu_confirm,0,0);
					break;
				case 4:
					_setting_lock = true;
					_setting_col_4 = c_yellow;
					_opt_col_4 = c_yellow;
					audio_play_sound(snd_menu_confirm,0,0);
					break;
				case 5:
					_setting_lock = true;
					_setting_col_5 = c_yellow;
					_opt_col_5 = c_yellow;
					audio_play_sound(snd_menu_confirm,0,0);
					break;
				case 6:
					_setting_lock = true;
					_setting_col_6 = c_yellow;
					_opt_col_6 = c_yellow;
					audio_play_sound(snd_menu_confirm,0,0);
					break;
				case 7:
					_setting = "OFF";
					_setting_col_7 = c_white;
					_menu_opt = 1;
					Anim_Create(id,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,-640,640,90);
					Anim_Create(id,"_soul_alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,1,-1,15);
					Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,156,0,1,120);
					Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,200,30,120);
					Anim_Create(id,"_soul_alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,1,20,120);
					audio_play_sound(snd_menu_confirm,0,0);
					break;
			}
		}
	}
	else
	{
		switch _setting_opt
		{
			case 1:
				if Input_IsPressed(INPUT.LEFT) or Input_IsPressed(INPUT.RIGHT)
				{
					if control = "Arrows"
					{
						control = "WASD";
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.CONTROL,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
					else if control = "WASD"
					{
						control = "Arrows";
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.CONTROL,0);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
				}
				if Input_IsPressed(INPUT.CANCEL)
				{
					_setting_lock = false;
					_setting_col_1 = c_white;
					_opt_col_1 = c_white;
					audio_play_sound(snd_menu_confirm,0,0);
				}
				break;
			case 2:
				if Input_IsPressed(INPUT.RIGHT)
				{
					if noob = "Normal"
					{
						noob = "Noob";
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
					else if noob = "Noob"
					{
						noob = "No Heal";
						_opt_col_2 = c_red;
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY,2);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
				}
				if Input_IsPressed(INPUT.LEFT)
				{
					if noob = "Noob"
					{
						noob = "Normal";
						_opt_col_2 = c_yellow;
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY,0);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
					else if noob = "No Heal"
					{
						noob = "Noob";
						_opt_col_2 = c_yellow;
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
				}
				if Input_IsPressed(INPUT.CANCEL)
				{
					_setting_lock = false;
					_setting_col_2 = c_white;
					if noob = "Normal"
						_opt_col_2 = c_white;
					audio_play_sound(snd_menu_confirm,0,0);
				}
				break;
			case 3:
				if Input_IsPressed(INPUT.RIGHT)
				{
					if border_mode = "None"
					{
						border_mode = "Original";
						Border_SetSprite(spr_border_sans);
						Border_SetEnabled(true);
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
					else if border_mode = "Original"
					{
						border_mode = "Corridor";
						Border_SetSprite(spr_border_sans_s00t);
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER,2);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
				}
				if Input_IsPressed(INPUT.LEFT)
				{
					if border_mode = "Corridor"
					{
						border_mode = "Original";
						_opt_col_3 = c_yellow;
						Border_SetSprite(spr_border_sans);
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
					else if border_mode = "Original"
					{
						border_mode = "None";
						Border_SetSprite(noone);
						Border_SetEnabled(false);
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER,0);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
				}
				if Input_IsPressed(INPUT.CANCEL)
				{
					_setting_lock = false;
					_setting_col_3 = c_white;
					if border_mode != "Corridor"
						_opt_col_3 = c_white;
					audio_play_sound(snd_menu_confirm,0,0);
				}
				break;
			case 4:
				if Input_IsHeld(INPUT.RIGHT)
				{
					if volume < 1
					{
						volume += 0.01
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.VOLUME,volume);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_stop_sound(snd_hurt);	
						audio_play_sound(snd_hurt,0,0);
					}
				}
				if Input_IsHeld(INPUT.LEFT)
				{
					if volume > 0
					{
						volume -= 0.01
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.VOLUME,volume);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_stop_sound(snd_hurt);
						audio_play_sound(snd_hurt,0,0);
					}
				}
				if Input_IsPressed(INPUT.CANCEL)
				{
					_setting_lock = false;
					_setting_col_4 = c_white;
					_opt_col_4 = c_white;
					audio_play_sound(snd_menu_confirm,0,0);
				}
				break;
			case 5:
				if Input_IsPressed(INPUT.RIGHT)
				{
					if megalo = "Tears in the Rain v3"
					{
						megalo = "Megalovania"
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_confirm,0,0);
					}
					else if megalo = "Megalovania"
					{
						megalo = "Megalovania (SSB)"
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC,2);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_confirm,0,0);
					}
				}
				if Input_IsPressed(INPUT.LEFT)
				{
					if megalo = "Megalovania"
					{
						megalo = "Tears in the Rain v3"
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC,0);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_confirm,0,0);
					}
					else if megalo = "Megalovania (SSB)" 
					{
						megalo = "Megalovania"
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_confirm,0,0);
					}
				}
				if Input_IsPressed(INPUT.CANCEL)
				{
					_setting_lock = false;
					_setting_col_5 = c_white;
					_opt_col_5 = c_white;
					audio_play_sound(snd_menu_confirm,0,0);
				}
				break;
				case 6:
				if Input_IsPressed(INPUT.LEFT) or Input_IsPressed(INPUT.RIGHT)
				{
					if blurring = "On"
					{
						blurring = "Off";
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BLURRING,0);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
					else if blurring = "Off"
					{
						blurring = "On";
						Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BLURRING,1);
						Flag_Save(FLAG_TYPE.DYNAMIC);
						audio_play_sound(snd_menu_switch,0,0);
					}
				}
				if Input_IsPressed(INPUT.CANCEL)
				{
					_setting_lock = false;
					_setting_col_6 = c_white;
					_opt_col_6 = c_white;
					audio_play_sound(snd_menu_confirm,0,0);
				}
				break;
		}
	}
}

else if _setting = "CREDITS" and y = -480 and alpha_credits = 1
{
	if Input_IsPressed(INPUT.CANCEL)
	{
		_setting = "OFF";
		_menu_opt = 1;
		Anim_Create(id,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,-480,480,90);
		Anim_Create(id,"alpha_credits",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,1,-1,15);
		Anim_Create(id,"_soul_y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,156,0,1,120);
		Anim_Create(id,"_soul_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,200,30,120);
		Anim_Create(id,"_soul_alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,0,1,20,120);
		audio_play_sound(snd_menu_confirm,0,0);
	}
}