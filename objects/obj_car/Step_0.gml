

if(place_meeting(x,y,obj_player)){
	if(!obj_textbox1.visible){
		timer_interact--;
	if(keyboard_check(vk_space)){
		if(timer_interact<0){
		obj_textbox1.visible=true;
		obj_textbox1.talk_car=true;
		timer_interact=room_speed*0.1;
		}
	}
	}
}










