/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
var _keep_x =x;
var _keep_y=y;
if(free_move){
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
}
if(inKitchen){
	if(x<0){x=0;}
	if(y<0){y=0;}
	if(x>800){x=800;}
	if(y>500){y=500;}
	
	if(x<110&&x>0)
	{
		if(y>205&&y<(455-x*250/110))
		{
		x=_keep_x;
		y=_keep_y;
		}
	}
	
	if(x>110&&x<295)
	{
		if(y>205&&y<(205+(x-110)*40/185))
		{
		x=_keep_x;
		y=_keep_y;
		}
	}
	if(x>295&&x<325)
	{
		if(y>175&&y<(245-(x-295)*70/30))
		{
		x=_keep_x;
		y=_keep_y;
		}
	}
	if(x>325&&x<800)
	{
		if(y>175&&y<(175+(x-325)*90/475))
		{

		x=_keep_x;
		y=_keep_y;
		}
	}
}
if(inKitchen){
if(place_meeting(x,y,obj_fridge)){
	
	if(!place_meeting(_keep_x,_keep_y,obj_fridge)){
	x=_keep_x;
	y=_keep_y;
	}
}
}
/*
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