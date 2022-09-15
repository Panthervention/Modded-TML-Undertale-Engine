/// @description Soul Collision
if global.menu_hurt = "activated"
{
	Battle_CallSoulEventHurt();
	Player_HurtKRM();
	Camera_Shake(2,2,1,1,1,1);
}