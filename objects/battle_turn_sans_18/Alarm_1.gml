if _slam < 17
{
	switch _case
	{
		case 1:
			Battle_SlamDown()
			if global.difficulty != 1
				MakeBoneWallTop(20,70,5,0)
			MakeBoneWallBottom(20,40,5,0)
			alarm[0] = delay
			break;
	
		case 2:
			Battle_SlamUp()
			if global.difficulty != 1
				MakeBoneWallBottom(20,70,5,0)
			MakeBoneWallTop(20,40,5,0)
			alarm[0] = delay
			break;
	
		case 3:
			Battle_SlamLeft()
			if global.difficulty != 1
				MakeBoneWallRight(20,70,5,0)
			MakeBoneWallLeft(20,40,5,0)
			alarm[0] = delay
			break;
	
		case 4:
			Battle_SlamRight()
			if global.difficulty != 1
				MakeBoneWallLeft(20,70,5,0)
			MakeBoneWallRight(20,40,5,0)
			alarm[0] = delay
			break;
	}
}
else Battle_EndTurn()