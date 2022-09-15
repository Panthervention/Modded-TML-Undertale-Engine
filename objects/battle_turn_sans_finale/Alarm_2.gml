if _gap < 8
{
	MakeBoneBottom(240,60,3,0,0,0,0,0,3)
	MakeBoneTop(400,60,-3,0,0,0,0,0,4)
	alarm[3] = 20
}
else 
{
	alarm[3] = -1
	alarm[2] = -1
	_start = true
}