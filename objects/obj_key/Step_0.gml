/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(place_meeting(x,y,obj_player)){
	if(!obj_textbox1.visible){
		timer_interact--;
		if(timer_interact<0){
		if(keyboard_check(vk_space)){
		obj_textbox1.visible=true;
		obj_textbox1.talk_key=true;
		}
	}
	}
}







