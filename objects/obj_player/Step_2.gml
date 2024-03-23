/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(keyboard_check_released(ord("W"))){
sprite_index=spr_player_idle_back;
}
if(keyboard_check_released(ord("S"))){
sprite_index=spr_player_idle_front;
}
if(keyboard_check_released(ord("A"))){
sprite_index=spr_player_idle_left;
}
if(keyboard_check_released(ord("D"))){
sprite_index=spr_player_idle_right;
}

depth=-y;
