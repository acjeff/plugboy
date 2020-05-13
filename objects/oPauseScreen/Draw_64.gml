if (!global.paused) exit;
depth = -999999999999999;

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

//Resume mouseover
var allXStart = 95;

var resumeXEnd = 95+254;
var resumeYStart = 316;
var resumeYEnd = 316+113;

var settingsXEnd = 95+270;
var settingsYStart = 464;
var settingsYEnd = 464+113;

var exitXEnd = 95+168;
var exitYStart = 612;
var exitYEnd = 612+113;

if ((mouseX > allXStart) && (mouseX < resumeXEnd) && (mouseY > resumeYStart) && (mouseY < resumeYEnd)) {
	hoveredOver = "resume";
	image_index = 1;
}
else if ((mouseX > allXStart) && (mouseX < settingsXEnd) && (mouseY > settingsYStart) && (mouseY < settingsYEnd)) {
	hoveredOver = "settings";
	image_index = 2;
}
else if ((mouseX > allXStart) && (mouseX < exitXEnd) && (mouseY > exitYStart) && (mouseY < exitYEnd)) {
	hoveredOver = "exit";
	image_index = 3;
}
else {
	image_index = 0;
	hoveredOver = 0;	
}

draw_self();