event_inherited()
speed = 0

if timer < time_stay 
{
	timer++
    sinn += 0.295;
    image_yscale = ((scale_y) + (sin(sinn) / 3.2));
    image_alpha = (image_yscale * 1.8) + 0.26;
}

if timer = time_stay
{
	timer = time_stay + 1
	if timer = time_stay + 1
	{
		Anim_Create(id, "image_yscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, image_yscale, -image_yscale, 15);
		Anim_Create(id, "image_alpha", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, image_alpha, -image_alpha, 15);
	}
}

if (image_alpha <= 0)
    instance_destroy()
if (image_yscale <= 0)
    instance_destroy()
	
