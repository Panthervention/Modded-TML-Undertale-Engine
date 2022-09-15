Anim_Init();

Console_Init();
Console_SetStatusNumber(3);
Console_SetStatusRatio(0,2/11);
Console_SetStatusRatio(1,8/11);
Console_SetStatusRatio(2,11/11);

Input_Init();
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);

Lang_Init();
Lang_LoadList();
Lang_LoadString(0);
Lang_LoadSprite(0);
Lang_LoadFont(0);

Flag_Init();

Encounter_Init();

BGM_Init();

Dialog_Init();

Demo_Init();

instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);

Flag_Load(FLAG_TYPE.DYNAMIC)
if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.SETTING) = 0
{
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.SETTING,1);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.ATTEMPT_COUNT,0);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DEATH_COUNT,0);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.CONTROL,0);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY,0);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER,0);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.VOLUME,1);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC,0);
	Flag_Set(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BLURRING,1);
	Flag_Save(FLAG_TYPE.DYNAMIC);
}

application_surface_draw_enable(false);

if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER) != 0
{
	if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER) = 1 Border_SetSprite(spr_border_sans);
	if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BORDER) = 2 Border_SetSprite(spr_border_sans_s00t);
	Border_SetEnabled(true);
}
else 
{
	Border_SetSprite(noone);
	Border_SetEnabled(false);
}

Console_OutputLine("UNDERTALE by Toby Fox");
Console_OutputLine("UNDERTALE Engine by TML");
Console_OutputLine("Engine Version: "+ENGINE_VERSION);
Console_OutputLine("Game Name: "+GAME_NAME);
Console_OutputLine("Game Author: "+GAME_AUTHOR);
Console_OutputLine("Game Version: "+GAME_VERSION);

//show_debug_overlay(true);

room_goto(room_settings);
if !window_get_fullscreen()
		window_center();

randomize();
