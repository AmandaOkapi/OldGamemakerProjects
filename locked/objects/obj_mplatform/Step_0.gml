/// @desc

//calc rising

if (y<=maxy) {
	vsp= spd;
	turning=true;
}
else {
	turning=false;
}

if (y>=miny) {
	vsp=-spd;
}
else {
	turning=false;
}


y= y+vsp; 