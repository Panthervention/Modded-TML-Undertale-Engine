Flag_Load(FLAG_TYPE.DYNAMIC)
var death_count = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DEATH_COUNT)
Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DEATH_COUNT,death_count+1)
Flag_Save(FLAG_TYPE.DYNAMIC)

x=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X);
y=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y);
audio_stop_all();
audio_sound_pitch(bgm_think,1)
alarm[0]=40;