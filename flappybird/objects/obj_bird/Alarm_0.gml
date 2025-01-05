
y1= random_range(-20,580);
y2= y1 + random_range(180,310);

with (instance_create_layer(x1,y1, "pipes", obj_pipe)){
	image_yscale=-1;;	
}

if (y2<550) {
(instance_create_layer(x1,y2, "pipes", obj_pipe)) 
}

alarm[0]= pipedens;