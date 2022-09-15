depth = DEPTH_BATTLE.BG
image_angle = random(360)
Anim_Create(id, "image_alpha", 1, 2, 1, -1, random_range(80,120), 60)
Anim_Create(id, "gravity", 2, 1, 0, random_range(-0.03,-0.06), 120)
rot = random_range(-2, 2)