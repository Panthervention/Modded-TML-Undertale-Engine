if _timer > 0
    _timer--

angle += rotate
if(lenable){
    len_dir += len_dir_move
    len+=len_speed
    x = len_x + lengthdir_x(len,len_dir)    
    y = len_y + lengthdir_y(len,len_dir)
    if (len_angle){
        angle += len_dir_move
    }
}
