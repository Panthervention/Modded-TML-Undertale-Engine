if time > 0
time--

if time%2=0
{
	with battle_enemy_sans
	{
		legs_shake = random_range(-sans_shaker.lshake,sans_shaker.lshake)
		body_shake = random_range(-sans_shaker.bshake,sans_shaker.bshake)
		head_shake = random_range(-sans_shaker.hshake,sans_shaker.hshake)
	}
}

if time = 0
{
	with battle_enemy_sans
	{
		legs_shake = 0
		body_shake = 0
		head_shake = 0
	}
	instance_destroy()
}
