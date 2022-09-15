switch _case
{
	case 1:
	Battle_SlamDown()
	MakeBoneWallTop(20,75,5,0)
	MakeBoneWallBottom(20,40,5,0)
	alarm[0] = 25
	break;
	
	case 2:
	Battle_SlamUp()
	MakeBoneWallBottom(20,75,5,0)
	MakeBoneWallTop(20,40,5,0)
	alarm[0] = 25
	break;
	
	case 3:
	Battle_SlamLeft()
	MakeBoneWallRight(20,75,5,0)
	MakeBoneWallLeft(20,40,5,0)
	alarm[0] = 25
	break;
	
	case 4:
	Battle_SlamRight()
	MakeBoneWallLeft(20,75,5,0)
	MakeBoneWallRight(20,40,5,0)
	alarm[0] = 25
	break;
}