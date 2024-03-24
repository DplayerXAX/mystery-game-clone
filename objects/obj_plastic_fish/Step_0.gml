/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if(place_meeting(x,y,obj_player)){
	if(!obj_textbox2.visible){
		timer_interact--;
	if(keyboard_check(vk_space)){
		if(timer_interact<0){
		obj_textbox2.visible=true;
		obj_textbox2.talk_fish_plastic=true;
		timer_interact=room_speed*0.1;
		}
	}
	}
}





