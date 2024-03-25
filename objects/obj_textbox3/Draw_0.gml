/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();
if(talk_happy){
visible=true;
timer_little--;
happyLine=lines[|happyProgress];
happyText=happyLine[?"text"];
draw_text_ext(x-200,y-40,happyText,50,500);
if(keyboard_check(vk_space)){
	if(timer_little<0){
	happyProgress++;
	timer_little=room_speed*0.2;
	if(happyProgress==2){
	talk_happy=false;
	visible=false;
	timer_little=room_speed*0.2;
	}
	
	}
}

}