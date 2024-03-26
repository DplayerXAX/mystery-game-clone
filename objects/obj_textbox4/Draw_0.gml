/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();
if(talk_angry){

visible=true;
timer_little--;
angryLine=lines[|angryProgress];
angryText=angryLine[?"text"];

if(angryProgress==1){
speaker.sprite_index=spr_speakerMe;
}
draw_text_ext(x-200,y-40,angryText,50,500);
if(keyboard_check(vk_space)){
	if(timer_little<0){
	angryProgress++;
	timer_little=room_speed*0.2;
	if(angryProgress==3){
	talk_angry=false;
	visible=false;
	timer_little=room_speed*0.2;
	}
	
	}
}

}

