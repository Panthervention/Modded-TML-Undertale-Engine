global.difficulty = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.DIFFICULTY);
global.volume = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.VOLUME);

if Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.CONTROL) == 1 
{
    Input_Unbind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,ord("W"));
    Input_Unbind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,ord("S"));
    Input_Unbind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,ord("A"));
    Input_Unbind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,ord("D"));
    Input_Unbind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
    Input_Unbind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
    Input_Unbind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
    Input_Unbind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);
    Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,ord("W"));
    Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,ord("S"));
    Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,ord("A"));
    Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,ord("D"));
}
else
{
    Input_Unbind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,ord("W"));
    Input_Unbind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,ord("S"));
    Input_Unbind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,ord("A"));
    Input_Unbind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,ord("D"));
    Input_Unbind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
    Input_Unbind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
    Input_Unbind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
    Input_Unbind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);
    Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
    Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
    Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
    Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);
}