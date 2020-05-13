depth = -999999999999999;

var saveFileExists = file_exists("saveData.ini");

var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);

//Resume mouseover
var allXStart = 95;
var buttonHeight = 113;

var continueXEnd = allXStart+286;
var continueYStart = 316;
var continueYEnd = continueYStart+buttonHeight;

var startNewXEnd = allXStart+309;
var startNewYStart = 465;
var startNewYEnd = startNewYStart+buttonHeight;

var settingsXEnd = allXStart+269;
var settingsYStart = 611;
var settingsYEnd = settingsYStart+buttonHeight;

var exitXEnd = allXStart+168;
var exitYStart = 757;
var exitYEnd = exitYStart+buttonHeight;

if ((mouseX > allXStart) && (mouseX < continueXEnd) && (mouseY > continueYStart) && (mouseY < continueYEnd) && saveFileExists) {
	hoveredOver = "continue";
	image_index = 5;
}
else if ((mouseX > allXStart) && (mouseX < startNewXEnd) && (mouseY > startNewYStart) && (mouseY < startNewYEnd)) {
	hoveredOver = "startnew";
	if (saveFileExists) image_index = 6;
	else image_index = 1;
}
else if ((mouseX > allXStart) && (mouseX < settingsXEnd) && (mouseY > settingsYStart) && (mouseY < settingsYEnd)) {
	hoveredOver = "settings";
	if (saveFileExists) image_index = 7;
	else image_index = 2;
}
else if ((mouseX > allXStart) && (mouseX < exitXEnd) && (mouseY > exitYStart) && (mouseY < exitYEnd)) {
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