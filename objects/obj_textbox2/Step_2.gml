/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if(!talk_fridge){

if(toRoom!=""){
	show_debug_message(toRoom);
if(toRoom=="rm_voice_angry"){room_goto(rm_voice_angry);}
if(toRoom=="rm_voice_happy"){
	show_debug_message("It's true!");
	room_goto(rm_voice_happy);}
}
}



