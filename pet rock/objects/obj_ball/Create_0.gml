/// @desc

//declare variables
vsp=0;
grv=3;
bounce_times=4;


//gameplay functions
//get playerinputs
inputs=function(){
	mouse_clicked=mouse_check_button(mb_left);
}

//check to change to pickup state
pickup_check=function(){
if position_meeting(mouse_x,mouse_y, self) and mouse_clicked{
		state=state_pickup;
		show_debug_message("pickup");
	}	
}


//create bounce state function
state_bounce=function(){
	show_debug_message("bounce");
	//checheck for picked
	pickup_check();
	//check if on the gorund
	if y>=850{
	if bounce_times>0{
		switch bounce_times
{
    case 4:
    vsp=-30;
    break;
	
    case 3:
	vsp=-25;
    break;

    case 2:
    vsp=-15;
    break;

    case 1:
    vsp=-10;
    break;
}
		bounce_times-=1;
	}
	else {
		//bounce is finised
	vsp=0;
	state=state_still;
	}
}
	vsp+=grv;
	if vsp !=0{
	y+=vsp;
	}
}

//create pickup state function
state_pickup=function(){
	x = mouse_x;
    y = mouse_y;
if !position_meeting(mouse_x,mouse_y, self) or !mouse_clicked{
	if (x<=-5 or x>=645){
	instance_destroy();
	}
	else{
bounce_times=4;
state=state_bounce;	
	}
}
}

//create still state fucntion
state_still=function(){
	show_debug_message("still");
	vsp=0;
	pickup_check();
}


//initial state
state=state_bounce



