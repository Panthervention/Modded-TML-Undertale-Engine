event_inherited();
depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
KR = global.KR_GB;
scale_y = 1;
blend = 0;
sinn = 0;
timer = 0;
time_stay = 20;

image_xscale = 100;
image_yscale = ((scale_y) + (sin(sinn) / 3.2));

if blend = 0
    image_blend = c_white
if blend = 1
    image_blend = make_color_rgb(20, 196, 255)
if blend = 2
    image_blend = make_color_rgb(248, 148, 29)