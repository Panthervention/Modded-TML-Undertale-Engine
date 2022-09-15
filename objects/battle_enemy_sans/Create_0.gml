global.menu_hurt = "de-activated"
global.sans_is_died = false
global.pie = 0

if global.difficulty != 1{
	global.KR_BONE = 7
	global.KR_GB = 10
}else{
	global.KR_BONE = 4
	global.KR_GB = 5
}
global.slam_power = 15
global.slam_damage = false

_check_status = 0
_body_init_x=0;
_body_init_y=-21;
_body_sprite=spr_sans_body;
_body_x=0;
_body_y=0;
_body_image=0;
_body_speed=0;
_body_loop=true;

action=SANS_ACTION.IDLE;
_action_step=1;

_wiggle=true;
_wiggle_sin=0;

_head_init_x=0;
_head_init_y=-21;
_head_sprite=spr_sans_head;
_head_x=0;
_head_y=0;
_head_image=0;

_legs_sprite=spr_sans_legs;

_hp=100

_bgm_x=-380;
Anim_Create(id,"_bgm_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_bgm_x,-_bgm_x,60);
Anim_Create(id,"_bgm_x",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,_bgm_x,60,400);
_bgm_x=0;

sweat_image = 0
yes_board_y = true
sans_is_alive = true
body_shake = 0
head_shake = 0
legs_shake = 0
think_pitch = 1
instance_create_depth(0,0,0,battle_slam_manager)

if global.phase = 1 and Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY) != 2

{
	Item_Set(0,item_pie);
	Item_Set(1,item_noodles);
	Item_Set(2,item_steak);
	Item_Set(3,item_sp);
	Item_Set(4,item_sp);
	Item_Set(5,item_sp);
	Item_Set(6,item_lh);
	Item_Set(7,item_lh);
	Item_Set(8,item_lh);
	Item_Set(9,item_lh);
	Item_Set(10,item_lh);
	Item_Set(11,item_lh);
}

else if global.phase = 2 and Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY) != 2
{
	Item_Set(0,item_pie);
	Item_Set(1,item_noodles);
	Item_Set(2,item_steak);
	Item_Set(3,item_sp);
}