depth = -999999999999999;

var saveFileExists = file_exists("saveData.ini");

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

var allX = 95;
var boxHeight = 113;

var continueY = 316;
var continueWidth = 286;

var startNewY = 465;
var startNewWidth = 309;

var settingsY = 611;
var settingsWidth = 269;

var exitY = 757;
var exitXEnd = 168;

if (IsMouseOverBox(allX, continueY, continueWidth, boxHeight, mouseX, mouseY) && saveFileExists) {
	hoveredOver = "continue";
	image_index = 5;
}
else if (IsMouseOverBox(allX, startNewY, startNewWidth, boxHeight, mouseX, mouseY)) {
	hoveredOver = "startnew";
	if (saveFileExists) image_index = 6;
	else image_index = 1;
}
else if (IsMouseOverBox(allX, settingsY, settingsWidth, boxHeight, mouseX, mouseY)) {
	hoveredOver = "settings";
	if (saveFileExists) image_index = 7;
	else image_index = 2;
}
else if (IsMouseOverBox(allX, exitY, exitXEnd, boxHeight, mouseX, mouseY)) {
	hoveredOver = "exit";
	if (saveFileExists) image_index = 8;
	else image_index = 3;
}
else {
	if (saveFileExists) image_index = 4;
	else image_index = 0;
	hoveredOver = 0;
}

draw_self();