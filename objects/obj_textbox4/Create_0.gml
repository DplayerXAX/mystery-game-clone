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
talk_angry=true;
angryProgress=0;
speaker=instance_create_layer(x-270,y,"UI",obj_speaker);
speaker.sprite_index=spr_speakerVoice;
audio_play_sound(funny_sound,0,true);