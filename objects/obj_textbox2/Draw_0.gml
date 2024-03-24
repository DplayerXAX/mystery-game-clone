/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();
show_debug_message("hel?");
if(talk_start){
	visible=true;
	show_debug_message("hello?");
	free_move=false;
	timer_little--;
	startLine=lines[|0];
	startText=startLine[?"text"];
	draw_set_font(font_word);
	draw_set_color(c_white);
	draw_text_ext(x-150,y-40,startText,50,400);
	if(keyboard_check(vk_space)){
	if(timer_little<0){
	timer_little=room_speed*0.2;
	talk_start=false;
	visible=false;
	free_move=true;

	}
	}

	
}

