///@desc isMouseOverBox(boxX, boxY, boxWidth, boxHeight, mouseX, mouseY);
///@argument boxX
///@argument boxY
///@argument boxWidth
///@argument boxHeight
///@argument mouseX
///@argument mouseY

var boxX = argument0;
var boxY = argument1;
var boxWidth = argument2;
var boxHeight = argument3;

var mouseX = argument4;
var mouseY = argument5;

var XStart = boxX;
var XEnd = boxX+boxWidth;
var YStart = boxY;
var YEnd = boxY+boxHeight;


return ((mouseX > XStart) && (mouseX < XEnd) && (mouseY > YStart) && (mouseY < YEnd));