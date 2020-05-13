if (!global.paused) exit;
depth = -999999999999999;

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

//Resume mouseover
var allX = 95;
var boxHeight = 113;

var resumeY = 316;
var resumeWidth = 254;

var settingsY = 464;
var settingsWidth = 270;

var exitY = 612;
var exitWidth = 168;

if (IsMouseOverBox(allX, resumeY, resumeWidth, boxHeight, mouseX, mouseY)) {
	hoveredOver = "resume";
	image_index = 1;
}
else if (IsMouseOverBox(allX, settingsY, settingsWidth, boxHeight, mouseX, mouseY)) {
	hoveredOver = "settings";
	image_index = 2;
}
else if (IsMouseOverBox(allX, exitY, exitWidth, boxHeight, mouseX, mouseY)) {
	hoveredOver = "exit";
	image_index = 3;
}
else {
	image_index = 0;
	hoveredOver = 0;	
}
show_debug_message("Load pause screen");

draw_self();