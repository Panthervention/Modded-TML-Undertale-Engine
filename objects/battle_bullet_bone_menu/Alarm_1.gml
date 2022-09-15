if move = true
{
    if dir == DIR.RIGHT
    {
        Anim_Create(id, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, y, ((-1 * move_length) / 2), move_time)
        Anim_Create(id, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (y - (move_length / 2)), (move_length / 2), move_time, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, length, move_length, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (length + move_length), (-1 * move_length), move_time, move_time)
        alarm[1] = (move_time * 2)
    }
    else if dir = DIR.LEFT
    {
        Anim_Create(id, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, y, (move_length / 2), move_time)
        Anim_Create(id, "y", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (y + (move_length / 2)), ((-1 * move_length) / 2), move_time, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, length, move_length, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (length + move_length), (-1 * move_length), move_time, move_time)
        alarm[1] = (move_time * 2)
    }
    else if dir = DIR.UP
    {
        Anim_Create(id, "x", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, x, (-1 * move_length), move_time)
        Anim_Create(id, "x", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (x + move_length), move_length, move_time, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, length, move_length, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (length + move_length), (-1 * move_length), move_time, move_time)
        alarm[1] = (move_time * 2)
    }
    else if dir = DIR.DOWN
    {
        Anim_Create(id, "x", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, x, move_length, move_time)
        Anim_Create(id, "x", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (x - move_length), (-1 * move_length), move_time, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, length, move_length, move_time)
        Anim_Create(id, "length", ANIM_TWEEN.LINEAR, ANIM_EASE.OUT, (length + move_length), (-1 * move_length), move_time, move_time)
        alarm[1] = (move_time * 2)
    }
}
