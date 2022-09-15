if _slam < 21
{
	switch _case
	{
		case 1:
			Battle_SlamDown()
			MakeBoneWallTop(15,75,5,0)
			MakeBoneWallBottom(15,40,5,0)
			alarm[0] = delay
			break;
	
		case 2:
			Battle_SlamUp()
			MakeBoneWallBottom(15,75,5,0)
			MakeBoneWallTop(15,40,5,0)
			alarm[0] = delay
			break;
	
		case 3:
			Battle_SlamLeft()
			MakeBoneWallRight(15,75,5,0)
			MakeBoneWallLeft(15,40,5,0)
			alarm[0] = delay
			break;
	
		case 4:
			Battle_SlamRight()
			MakeBoneWallLeft(15,75,5,0)
			MakeBoneWallRight(15,40,5,0)
			alarm[0] = delay
			break;
	}
}
else 
   Battle_EndTurn()