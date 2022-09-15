_timer ++
	
if _timer = 1
{
	if charge_sound = 1
	{
		audio_stop_sound(snd_gb_charge);
		audio_play_sound(snd_gb_charge,0,0);		
		audio_play_sound(snd_gb_charge,0,0);
	}
	Anim_Create(id, "x", ANIM_TWEEN.QUART, ANIM_EASE.OUT, xstart, -xstart + x_target, time_move);
	Anim_Create(id, "y", ANIM_TWEEN.QUART, ANIM_EASE.OUT, ystart, -ystart + y_target, time_move);
	Anim_Create(id, "image_angle", ANIM_TWEEN.QUART, ANIM_EASE.OUT, angle_start, -angle_start + angle_target, time_move);
}
	
if _timer = time_move + time_pause
{
    Anim_Create(id, "image_yscale", 0, 0, image_yscale, -(image_yscale * 0.4), 8);
	Anim_Create(id, "image_index", 0, 0, 0, 1, 8);
}
if _timer = time_move + time_pause + 10
{
	image_index++
	image_yscale = default_scale;
	_inst = instance_create_depth(x,y,0,battle_bullet_gb_beam);
	_inst.image_angle = image_angle;
	_inst.blend = blend;
	_inst.time_stay = time_stay;
	_inst.scale_y = image_yscale;
	
	Camera_Shake(4*default_scale,4*default_scale,2,2,2,2);
	
	if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.BLURRING) = 1
	{
		instance_destroy(blur_shader);
		shader = instance_create_depth(0,0,0,blur_shader);
		shader.var_blur_amount = 2 * image_yscale;
		shader.duration = time_stay;
	}
	
	if release_sound = 1
	{
		audio_stop_sound(snd_gb_release);
		audio_play_sound(snd_gb_release,0,0);
		audio_play_sound(snd_gb_release,0,0);
	}
}

if _timer >= time_move + time_pause + 10
{
	_index_timer++
	direction = image_angle - 180;
	speed += 0.75;
	var LEN = 20 * image_xscale
	var X = x + lengthdir_x(LEN, image_angle)
	var Y = y + lengthdir_y(LEN, image_angle)
	var SPEED = speed / 26
    if instance_exists(_inst)
    {
        _inst.x = X;
        _inst.y = Y;
		_inst.image_xscale += SPEED;
	}
	if _index_timer >= 3 and _timer%3 = 0
	{
		if image_index = 2
			image_index = 3;
		else if image_index = 3
			image_index = 2;
	}
}

if x < 0 or x > 640 and y < 0 or y > 480
{
	if _index_timer >= 60
	{
		if !instance_exists(_inst)
			instance_destroy()
	}
}