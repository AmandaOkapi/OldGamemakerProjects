/// @desc basic AI

//horizontal collisions
hcolliding= place_meeting(x+hsp,y, obj_enemywall);
if hcolliding{
if (move=-1){
	move=1;
}
else 
{
	move=-1;
}
}

hsp=move*spd;
vsp=vsp+grv;

colliding= place_meeting(x,y+vsp, obj_wall);
if (colliding){
while (!place_meeting(x,y+sign(vsp), obj_wall))
{
    y=y+sign(vsp);
}
vsp=0;
}

image_xscale=move; 
y=y+vsp;
x=x+hsp;

if !place_meeting(x,y, obj_avery){
image_speed=0;	
}

if healthh<=0 and special==0{
instance_create_layer(x,y,"enemy", obj_enemydead);
instance_destroy();
}

if healthh<=0 and special==1{
	instance_create_layer(4010,420,"player", obj_star);
	instance_destroy();
}