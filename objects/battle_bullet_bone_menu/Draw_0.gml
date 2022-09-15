if(color = BONE.WHITE)
	blend = c_white;
if(color = BONE.BLUE)
	blend = make_color_rgb(20,196,255);
if(color = BONE.ORANGE)
	blend = make_color_rgb(248,148,29);

if (out == 0)
{
    depth = -1000
    draw_sprite_ext(spr_bone_body, 0, x, y, (length / 2), 1, angle, blend, alpha)
    draw_sprite_ext(spr_bone_head, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha)
    draw_sprite_ext(spr_bone_head, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha)
}
else
{
    depth = -1000
    draw_sprite_ext(spr_bone_body, 0, x, y, (length / 2), 1, angle, blend, alpha)
    draw_sprite_ext(spr_bone_head, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha)
    draw_sprite_ext(spr_bone_head, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, alpha)
}
if (collision_line(((x + lengthdir_x(3, (angle + 90))) + lengthdir_x(((length / 2) + 4), angle)), ((y + lengthdir_y(2, (angle + 90))) + lengthdir_y(((length / 2) + 4), angle)), ((x + lengthdir_x(3, (angle + 90))) - lengthdir_x(((length / 2) + 4), angle)), ((y + lengthdir_y(2, (angle + 90))) - lengthdir_y(((length / 2) + 4), angle)), battle_soul, 0, 0) || collision_line(((x - lengthdir_x(2, (angle + 90))) + lengthdir_x(((length / 2) + 4), angle)), ((y - lengthdir_y(2, (angle + 90))) + lengthdir_y(((length / 2) + 4), angle)), ((x - lengthdir_x(2, (angle + 90))) - lengthdir_x(((length / 2) + 4), angle)), ((y - lengthdir_y(2, (angle + 90))) - lengthdir_y(((length / 2) + 4), angle)), battle_soul, 0, 0))
    event_user(0)