/// @desc

if done==0 {

vsp=vsp+grv;

colliding= place_meeting(x,y+vsp, obj_wall);
if (colliding){
	if (vsp>0) done=1; 
while (!place_meeting(x,y+sign(vsp), obj_wall))
{
    y=y+sign(vsp);
}
vsp=0;
}

y=y+vsp;
x=x+hsp;


}