/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();

if(talk_apple){
	free_move=false;
	timer_little--;
	apple=interactables[?"obj_apple"];
	appleLines=apple[?"lines"];
	appleLine=appleLines[|appleProgress];

	appleText=appleLine[?"text"];

	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-150,y-40,appleText,50,400);
	if(keyboard_check(vk_space)&&timer_little<0){
	appleProgress++;
	instance_destroy(obj_apple);
	obj_player.hasApple=true;
	timer_little=room_speed*0.2;
	if(appleProgress=2){
	talk_apple=false;
	visible=false;
	free_move=true;

	}
	}
	
}

if(talk_car){

	free_move=false;
	timer_little--;
	car=interactables[?"obj_car"];
	carLines=car[?"lines"];
	carLine=carLines[|carProgress]; 
	carText=carLine[?"text"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-150,y-40,carText,50,400);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_car=false;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_key){

	free_move=false;
	timer_little--;
	key=interactables[?"obj_key"];
	keyLines=key[?"lines"];
	keyLine=keyLines[|keyProgress]; 
	keyLineLines=keyLine[?"lines"];
	keyLineLine=keyLineLines[|0];
	keyText=keyLineLine[?"text"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-150,y-40,keyText,50,400);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	obj_player.hasKey=true;
	instance_destroy(obj_key);
	talk_key=false;
	visible=false;
	free_move=true;

	}
	}

	
}

if(talk_door&&!talk_apple&&!talk_car&&!talk_key){
	show_debug_message("okay?");
	free_move=false;
	timer_little--;
	door=interactables[?"obj_door"];
	doorLines=door[?"lines"];
	if(obj_player.hasKey){
	doorLine=doorLines[|0];
	doorLineLines=doorLine[?"lines"];
	doorLineLine=doorLineLines[|0];
	doorText=doorLineLine[?"text"];
	}else{
	doorLine=doorLines[|1];
	doorText=doorLine[?"text"];
	}

	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-150,y-40,doorText,50,400);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	if(obj_player.hasKey){
	room_goto(rm_kitchen);
	}
	timer_little=room_speed*0.2;
	talk_door=false;
	visible=false;
	free_move=true;
	show_debug_message("it's over");

	}
	}

	
}