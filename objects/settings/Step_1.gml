angle += 6
var volume = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.VOLUME);
audio_group_set_gain(audiogroup_default,volume,0);

if _setting_opt = 7 _setting_col_7 = c_yellow;
else _setting_col_7 = c_white;
if noob = "Noob" _opt_col_2 = RGB;
if noob = "No Heal" _opt_col_2 = c_red;
if border_mode = "Corridor" _opt_col_3 = RGB;

var attempt_count = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT);
var death_count = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DEATH_COUNT);

if attempt_count > 0 attempt_col = c_white;
if attempt_count > 50 attempt_col = c_yellow;
if attempt_count > 100 attempt_col = c_green;
if attempt_count > 200 attempt_col = c_orange;
if attempt_count > 400 attempt_col = c_blue;
if attempt_count > 700 attempt_col = c_lime;
if attempt_count > 1000 attempt_col = c_aqua;

if death_count > 0 death_col = c_white;
if death_count > 50 death_col = c_yellow;
if death_count > 100 death_col = c_green;
if death_count > 200 death_col = c_orange;
if death_count > 400 death_col = c_blue;
if death_count > 700 death_col = c_lime;
if death_count > 1000 death_col = c_aqua;
