if Player_GetHp() <= 0
{
	if global.debug = false
	{
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,x-camera.x);
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,y-camera.y);
		room_goto(room_gameover);
	}
	else if global.debug = true
	{
		global.heal_count++
		global._inv = 60
		Player_SetHp(Player_GetHpMax())
		Player_SetKR(0)
		audio_play_sound(snd_item_heal,0,false)
	}
}