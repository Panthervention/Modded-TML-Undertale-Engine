ca = 0;
RGB = make_color_hsv(ca % 255, 255, 255);
alpha = 1;
S00T_Alpha = 1;
attempt_col = c_white;
death_col = c_white;
RNG_Logo = irandom_range(0,20);
angle = 0;
audio_play_sound(bgm_menu,0,true);

switch Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.CONTROL)
{
	case 0:
		control = "Arrows";
		break;
	case 1:
		control = "WASD";
		break;
}
switch Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY)
{
	case 0:
		noob = "Normal";
		break;
	case 1:
		noob = "Noob";
		break;
	case 2:
		noob = "No Heal";
		break;
}
switch Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER)
{
	case 0:
		border_mode = "None";
		Border_SetEnabled(false);
		break;
	case 1:
		border_mode = "Original";
		Border_SetEnabled(true);
		break;
	case 2:
		border_mode = "Corridor";
		Border_SetEnabled(true);
		break;
}
volume = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.VOLUME);
switch Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC)
{
	case 0:
		megalo = "Tears in the Rain v3";
		break;
	case 1:
		megalo = "Megalovania";
		break;
	case 2:
		megalo = "Megalovania (SSB)";
		break;
}
switch Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BLURRING)
{
	case 1:
		blurring = "On";
		break;
	case 0:
		blurring = "Off";
		break;	
}

alpha_credits = 0;
_setting = "OFF"
_soul_x = 200;
_soul_y = 156;
_soul_alpha = 1;

_menu_opt = 1;
_menu_col_1 = c_white;
_menu_col_2 = c_white;
_menu_col_3 = c_white;
_menu_col_4 = c_white;

_setting_opt = 1;
_setting_lock = false;
_setting_col_1 = c_white;
_setting_col_2 = c_white;
_setting_col_3 = c_white;
_setting_col_4 = c_white;
_setting_col_5 = c_white;
_setting_col_6 = c_white;
_setting_col_7 = c_white;

_opt_col_1 = c_white;
_opt_col_2 = c_white;
_opt_col_3 = c_white;
_opt_col_4 = c_white;
_opt_col_5 = c_white;
_opt_col_6 = c_white;
