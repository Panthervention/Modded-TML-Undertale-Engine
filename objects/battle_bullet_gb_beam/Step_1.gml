///@desc Color switcher
switch blend
{
	default:
		image_blend = c_white;
		break;
	case 1:
		image_blend = make_color_rgb(20, 196, 255);
		break;
	case 2:
    	image_blend = make_color_rgb(248, 148, 29);
		break;
	case 3:
    	image_blend = c_red;
		break;
}