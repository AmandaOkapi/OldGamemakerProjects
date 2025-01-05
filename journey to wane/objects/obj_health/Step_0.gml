/// @desc
if room=Room1{

	
switch (obj_canoe.hp)
{
	 case 6:
    h1=0;
	h2=0;
	h3=0;
	if rank!="D"{
	rank="S";	
	}
	break;
	
    case 5:
    h1=1;
	h2=0;
	h3=0;
	if rank!="D"{
	rank="A";	
	}
    break;

    case 4:
    h1=2;
	h2=0;
	h3=0;
	if rank!="D"{
	rank="B";	
	}
    break;

    case 3:
    h2=1;
	h3=0;
	h1=2;
	if rank!="D"{
	rank="B";	
	}
    break;

    case 2:
    h2=2;
	h1=2;
	h3=0;
	if rank!="D"{
	rank="C";	
	}
    break;
	
	
	case 1:
	h3=1
	h1=2;
	h2=2;
	if rank!="D"{
	rank="C";	
	}
    break;
	
	case 0:
	h3=2;
	h1=2;
	h2=2;
    break;
}
if instance_exists(obj_canoe){
totaltimr=obj_canoe.timr;	
}
}
