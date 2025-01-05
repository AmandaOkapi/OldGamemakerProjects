/// @desc

str1 = "Where is the loon?";
str2 = "";

distance =50;
drawsprite =spr_boot;
xx=x;
yy=y;
time1= instance_create_layer(x, y-distance, "time",obj_time);
time2= instance_create_layer(x+distance, y, "time", obj_time);
time3= instance_create_layer(x, y+distance, "time" , obj_time);
time4= instance_create_layer(x-distance, y, "time", obj_time);

time1.image_index=0;
time2.image_index=1;
time3.image_index=2;
time4.image_index=3;

clicked = false;