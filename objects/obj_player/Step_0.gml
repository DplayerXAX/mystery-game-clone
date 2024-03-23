/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
var _keep_x =x;
var _keep_y=y;
if(keyboard_check(ord("W"))){
y-=4;
sprite_index=spr_player_walk_back;

}
 if(keyboard_check(ord("S"))){
y+=4;
sprite_index=spr_player_walk_front;

}
if(keyboard_check(ord("A"))){
x-=4;
sprite_index=spr_player_walk_side_left;

}
if(keyboard_check(ord("D"))){
x+=4;
sprite_index=spr_player_walk_side_right;
}

/*
if(place_meeting(x,y,obj_wall)){
	if(!place_meeting(_keep_x,_keep_y,obj_wall)){
	x=_keep_x;
	y=_keep_y;
	show_debug_message("what");
	}
}

if(place_meeting(x,y,obj_door)){
	if(_get_key=0){
	x=_keep_x;
	y=_keep_y;
	}else{instance_destroy(obj_door);}
}
if(place_meeting(x,y,obj_key)){
	_get_key+=1;
	instance_destroy(obj_key);
}

*/