timer++
a += 0.04
image_yscale = (1.2 + (sin(a) / pi))

if theme = 2
{
	ca++
	image_blend = make_color_hsv(ca%255,255,255)
}
if ((timer % 6) == 0)
{
    timer = 0
    instance_create_depth(random(640), 510, 0, battle_background_bone)
}