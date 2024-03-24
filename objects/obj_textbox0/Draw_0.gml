/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_self();
draw_set_font(font_word);
if(lineProgress==0){
line=lines[|lineProgress];
draw_text(x-150,y-20,line[?"text"]);
if(keyboard_check(vk_space)){
 lineProgress++;
}
}else if(lineProgress==1){
line=lines[|lineProgress];
if(!oneTimeExp){
var choice1=instance_create_layer(x+100,y-30,"UI",obj_choice);
var choice2=instance_create_layer(x+100,y+30,"UI",obj_choice);
choice2.order=1;
oneTimeExp=true;
}
if(answer!=""){
draw_set_color(c_white);
draw_set_font(font_word);
draw_text(x-150,y-20,answer);
if(keyboard_check(vk_space)){
 lineProgress=2;
}
}

}else if(lineProgress==2){
timer_little--;
line=lines[|lineProgress];
draw_text(x-150,y-20,line[?"text"]);
if(keyboard_check(vk_space)&&timer_little<0){
 lineProgress=3;
}
}else if(lineProgress==3){
//room_goto(line[?"goto"]);
//need to be fixed
obj_player.image_xscale=2;
obj_player.image_yscale=2;
room_goto(rm_bedroom);
}
