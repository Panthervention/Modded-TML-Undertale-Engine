depth = DEPTH_BATTLE.BG
x = -640
y = 490
image_xscale = 12800
a = 0
timer = 0
ca = 0
repeat(24)
{
	a = instance_create_depth(random(640), random_range(560,440), 0, battle_background_bone)
	a.hspeed = random_range(-0.3,-1.2)
	a.rot = random_range(-2, 2)
	Anim_Create(a, "image_alpha", 1, 2, 1, -1, random_range(40,80), 60)
}
theme = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.MUSIC)
if theme = 0 image_blend = c_aqua
if theme = 1 image_blend = c_red
if theme = 2 image_blend = make_color_hsv(ca%255,255,255)