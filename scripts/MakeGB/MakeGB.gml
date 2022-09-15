///@arg x_start
///@arg y_start
///@arg x_target
///@arg y_target
///@arg angle_start
///@arg angle_target
///@arg pause
///@arg scale_x
///@arg scale_y
///@arg stay
///@arg duration
///@arg color
///@arg *c_sound
///@arg *r_sound
function MakeGB(xx,yy,idealx,idealy,angle,idealrot,pause,xscale,yscale,stay,duration,color) 
{
	var charge_sound = 1;
	var release_sound = 1;
	if argument_count >= 13
		charge_sound = argument[12];
	if argument_count >= 14
		release_sound = argument[13];
		
	var bb = instance_create_depth(xx,yy,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH*2,battle_bullet_gb);
	bb.x_target = idealx;
	bb.y_target = idealy;
	bb.angle_start = angle;
	bb.angle_target = idealrot;
	bb.time_pause = pause;
	bb.image_xscale = yscale;
	bb.default_scale = xscale;
	bb.image_yscale = xscale;
	bb.time_stay = stay;
	bb.time_move = duration;
	bb.blend = color;
	bb.charge_sound = charge_sound;
	bb.release_sound = release_sound;

	return bb;
}
