///@desc Turn End
event_inherited();

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