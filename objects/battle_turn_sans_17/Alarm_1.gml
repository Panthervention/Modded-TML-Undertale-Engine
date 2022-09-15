if _slam < 17
{
	switch _case
	{
		case 1:
			Battle_SlamDown()
			MakeBoneWallBottom(27,40,5,0)
			alarm[0] = 30
			break;
	
		case 2:
			Battle_SlamUp()
			MakeBoneWallTop(27,40,5,0)
			alarm[0] = 30
			break;
	
		case 3:
			Battle_SlamLeft()
			MakeBoneWallLeft(27,40,5,0)
			alarm[0] = 30
			break;
	
		case 4:
			Battle_SlamRight()
			MakeBoneWallRight(27,40,5,0)
			alarm[0] = 30
			break;
	}
}
else Battle_EndTurn()