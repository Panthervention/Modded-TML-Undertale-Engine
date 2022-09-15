if(color = BONE.WHITE){
	blend = c_white;
}
if(color = BONE.BLUE){
	blend = make_color_rgb(20,196,255);
}
if(color = BONE.ORANGE){
	blend = make_color_rgb(248,148,29);
}
if(color = BONE.RED){
	blend = c_red;
}
if(color = BONE.BLUE_SOUL){
	blend = make_color_rgb(0,59,255);
}

if(out = 0){
	depth = DEPTH_BATTLE.BULLET;
	surface_set_target(Battle_GetBoardSurface());{
		draw_sprite_ext(spr_bone_body,0,x,y,length/2,1,angle,blend,alpha);
		draw_sprite_ext(spr_bone_head,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,alpha);
		draw_sprite_ext(spr_bone_head,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,alpha);
		
	}surface_reset_target();
}
else{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
	draw_sprite_ext(spr_bone_body,0,x,y,length/2,1,angle,blend,alpha);
	draw_sprite_ext(spr_bone_head,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,alpha);
	draw_sprite_ext(spr_bone_head,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,alpha);
		
		
}

//draw_set_color(c_red)
//draw_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle))
//draw_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle))

if(collision_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)||collision_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)){
	Battle_CallSoulEventBulletCollision();
}