if yes_board_y = true
y=battle_board.y-battle_board.up-battle_board.thickness_frame-6;
audio_sound_pitch(bgm_think,think_pitch)

var num=sprite_get_number(_body_sprite);

_body_image +=_body_speed;
if(_body_image>=num){
	if(_body_loop){
		_body_image=0;
	}else{
		_body_image=num-1;
		_body_speed=0;
	}
}
if(_wiggle){
    _wiggle_sin++;
    if(_wiggle_sin%1==0){
		if sans_is_alive = true
		{
        _body_x=sin(_wiggle_sin*0.1)*1;
        _body_y=sin(_wiggle_sin*0.2)*0.7;
        _head_x=sin(_wiggle_sin*0.1)*0.1;
        _head_y=sin(_wiggle_sin*0.2)*0.1;
		}
		else if sans_is_alive = false
		{
        //_body_x=sin(_wiggle_sin*0.1)*1;
        _body_y=sin(_wiggle_sin*0.1)*0.35;
        //_head_x=sin(_wiggle_sin*0.1)*0.1;
        _head_y=sin(_wiggle_sin*0.1)*0.05;
		}
    }
}else{
    _wiggle_sin=0;
}


if(action==SANS_ACTION.STATIC)
{
	if(_action_step!=1)
	{
		_body_sprite=spr_sans_body;
		_body_x=0;
		_body_y=0;
		_body_image=0;
		_body_speed=0;
		_body_loop=true;
		_wiggle=false;
		_action_step=1;
	}
}
else if(action==SANS_ACTION.IDLE)
{
	if(_action_step!=1)
	{
		_body_sprite=spr_sans_body;
		_body_x=0;
		_body_y=0;
		_body_image=0;
		_body_speed=0;
		_body_loop=true;
		_wiggle=true;
		_action_step=1;
	}
}
else if(action==SANS_ACTION.LEFT)
{
	if(_action_step <= 4){
		switch _action_step
		{
			case 0:
                _body_sprite = spr_sans_slam_left;
                _body_x = 0;
                _body_y = 0;
                _body_image = 0;
                _body_speed = 0.2;
                _body_loop = 0;
                _wiggle = 0;
                break;
            case 1:
                _body_x = 5;
                break;
            case 2:
                _body_x = 6;
                break;
            case 3:
                _body_x = -3;
                break;
            case 4:
                _body_x = -2;
                break;
			case 5:
                _body_x = 0;
                break;
		}
        _action_step += 0.25
	}
}
else if(action==SANS_ACTION.RIGHT)
{
	if(_action_step <= 5){
        switch _action_step
        {
            case 0:
                _body_sprite = spr_sans_slam_right;
                _body_x = 0;
                _body_y = 0;
                _body_image = 0;
                _body_speed = 0.2;
                _body_loop = 0;
                _wiggle = 0;
                break
            case 1:
                _body_x = -5;
                break;
            case 2:
                _body_x = -6;
                break;
            case 3:
                _body_x = 3;
                break;
            case 4:
                _body_x = 2;
                break;
            case 5:
                _body_x = 0;
                break;
        }
        _action_step += 0.25
    }
}
else if(action==SANS_ACTION.DOWN)
{
	if(_action_step<=4)
	{
		switch(_action_step)
		{
			case 0:
				_body_sprite=spr_sans_slam_down;
				_body_x=0;
				_body_y=-1;
				_body_image=0;
				_body_speed=0;
				_body_loop=false;
				_wiggle=false;
				break;
			case 1:
				_body_y=-3;
				_body_speed=0.5;
				break;
			case 2:
				_body_y=3;
		     	 break;
			case 3:
				_body_y=2;
				break;
		}
		_action_step+=0.2;
	}
}
else if(action==SANS_ACTION.UP)
{
	if(_action_step<=4)
	{
		switch(_action_step)
		{
			case 0:
				_body_sprite=spr_sans_slam_up;
				_body_x=0;
				_body_y=3;
				_body_image=0;
				_body_speed=0;
				_body_loop=false;
				_wiggle=false;
				break;
			case 1:
				_body_y=5;
				_body_speed=0.5;
				break;
			case 2:
				_body_y=-1;
				break;
			case 3:
				_body_y=0;
				break;
		}
		_action_step+=0.2;
	}
}