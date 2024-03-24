/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 





if(place_meeting(x,y,obj_player)){
	if(!obj_textbox1.visible){
		timer_doorInteract--;
	if(keyboard_check(vk_space)){
		if(timer_doorInteract<0){
		obj_textbox1.visible=true;
		obj_textbox1.talk_door=true;
		timer_doorInteract=room_speed*0.1;
		}
	}
	}
}










