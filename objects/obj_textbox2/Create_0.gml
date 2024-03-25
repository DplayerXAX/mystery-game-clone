/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
/*
lineProgress=0;
globalvar answer;
answer="";
oneTimeExp=false;
timer_little=room_speed*0.2;

*/
visible=true;

timer_little=room_speed*0.2;
timer_interact=room_speed*0.1;
talk_start=true;
talk_door=false;
talk_fish_wood=false;
talk_fish=false;
talk_fish_singing=false;
talk_fish_plastic=false;
singProgress=0;
fridgeProgress=0;
fridgeFinish=5;
talk_fridge=false;
show_debug_message("excuse me");
show_debug_message(talk_start);
speaker=instance_create_layer(x-270,y,"UI",obj_speaker);
hideText=false;
var choiceBox1;
var choiceBox2;
var choiceBox3;
choiceAnswer="";
toRoom="";