/// @description Debug by FDY
if Player_GetHp() + Player_GetKR() >= Player_GetHpMax()
	Player_SetKR(Player_GetHpMax() - Player_GetHp())

if global.debug = true
{		
    draw_set_font(font_mars_needs_cunnilingus)
    ca++
    col = make_color_hsv((ca % 255), 255, 255)
	color = make_color_hsv((ca % 255), 255, 255)
    draw_set_color(col)
	draw_set_alpha(alpha)
    draw_text_ext_transformed(480, ((392 + battle_ui.y) - 401), "DEBUG", -1, -1, 2, 2, 0)
    draw_set_alpha(1)
    x1 = (480 + (sin(degtorad(ca)) * 20))
    y1 = (((392 + battle_ui.y) - 401) + (cos(degtorad(ca)) * 20))
    x2 = (480 + (sin(degtorad((ca + 120))) * 20))
    y2 = (((392 + battle_ui.y) - 401) + (cos(degtorad((ca + 120))) * 20))
    x3 = (480 + (sin(degtorad((ca + 240))) * 20))
    y3 = (((392 + battle_ui.y) - 401) + (cos(degtorad((ca + 240))) * 20))
    gpu_set_blendmode(bm_add)
    col1 = make_color_rgb(255, 0, 0)
    col2 = make_color_rgb(0, 255, 0)
    col3 = make_color_rgb(0, 0, 255)
    draw_text_ext_transformed_color(x3, y3, "DEBUG", -1, -1, 2, 2, 0, col1, col3, col3, col3, alpha)
    draw_text_ext_transformed_color(x2, y2, "DEBUG", -1, -1, 2, 2, 0, col1, col2, col2, col2, alpha)
    draw_text_ext_transformed_color(x1, y1, "DEBUG", -1, -1, 2, 2, 0, col1, col1, col1, col1, alpha)
	
    draw_text_ext_transformed_color(5, 10, ("SPEED: " + string(room_speed/60)+"x ("+string(room_speed)+" FPS)"), -1, -1, 1, 1, 0, col, col, col, col, alpha)
	draw_text_ext_transformed_color(5, 35, ("FPS: " + string(fps)), -1, -1, 1, 1, 0, col, col, col, col, alpha)
    draw_text_ext_transformed_color(5, 60, ("TURN: " + string(Battle_GetTurnNumber())), -1, -1, 1, 1, 0, col, col, col, col, alpha)
	draw_text_ext_transformed_color(5, 85, ("SOUL.X: " + string(battle_soul.x)), -1, -1, 1, 1, 0, col, col, col, col, alpha)
	draw_text_ext_transformed_color(5, 110, ("SOUL.Y: " + string(battle_soul.y)), -1, -1, 1, 1, 0, col, col, col, col, alpha)
	draw_text_ext_transformed_color(5, 135, ("INSTANCES: " + string(instance_count)), -1, -1, 1, 1, 0, col, col, col, col, alpha)
	draw_text_ext_transformed_color(5, 160, ("LIFE: " + string(global.heal_count)), -1, -1, 1, 1, 0, col, col, col, col, alpha)

    gpu_set_blendmode(bm_normal)
    if keyboard_check(vk_lcontrol) or keyboard_check(vk_rcontrol){
        if keyboard_check_pressed(vk_left)
            Battle_SetTurnNumber((Battle_GetTurnNumber() - 1))
        else if keyboard_check_pressed(vk_right)
            Battle_SetTurnNumber((Battle_GetTurnNumber() + 1))
    }
    if keyboard_check(vk_lshift) or keyboard_check(vk_rshift)
	{
        if (room_speed < 9999)
        {
            if keyboard_check_pressed(vk_left)
            {
                if (room_speed > 5)
                    room_speed -= 5
            }
            else if keyboard_check_pressed(vk_right)
                room_speed += 5
            else if keyboard_check(ord("R"))
                room_speed = 60
            else if keyboard_check(ord("F"))
                room_speed = 600
			else if keyboard_check_pressed(ord("E"))
			{
			    Battle_EndTurn()
				Battle_SetBoardSize(65,65,283,283,1)
				camera.angle = 0
				Battle_FlashOff()
				Battle_SetTurnNumber(Battle_GetTurnNumber() - 1)
				audio_play_sound(snd_ding,0,false)
			}
        }
    }
}

