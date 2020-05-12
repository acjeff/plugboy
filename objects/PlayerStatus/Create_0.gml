global.paused = 0;
draw_set_font(StandardFont);
showDead = false;
wait = room_speed * 3;
global.inGame = true;
global.pauseScreen = false;

ini_open("saveData.ini");

global.lastCheckPointX = global.loadFromFile ? ini_read_real("Variables","lastCheckPointX",0) :  0;
global.lastCheckPointY = global.loadFromFile ? ini_read_real("Variables","lastCheckPointY",0) :  0;
global.energy = global.loadFromFile ? ini_read_real("Variables","energy",0) :  0;
global.life = global.loadFromFile ? ini_read_real("Variables","life",0) :  3;
roomToGoTo = global.loadFromFile ? ini_read_real("Variables","room",0) : Room1;

show_debug_message(string(global.life) + " : life");

ini_close();

global.totalEnergyCapacity = 100;
global.energyProxObj = oPlayer;
global.totalLifeCapacity = 3;

depth = -9999;

room_goto(roomToGoTo);