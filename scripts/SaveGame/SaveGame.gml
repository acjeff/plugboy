ini_open("saveData.ini");

//Values to save
//Level, checkpoint x, checkpoint y, Dead Enemies, Health, Energy

if (global.lastCheckPointX) ini_write_real("Variables", "lastCheckPointX", global.lastCheckPointX);
if (global.lastCheckPointY) ini_write_real("Variables", "lastCheckPointY", global.lastCheckPointY);
if (global.energy) ini_write_real("Variables", "energy", global.energy);
if (global.life) ini_write_real("Variables", "life", global.life);
if (instance_exists(oGlowbie)) ini_write_real("Variables", "glowbieExists", true);
ini_write_real("Variables", "PlayerX", oPlayer.x);
ini_write_real("Variables", "PlayerY", oPlayer.y);
if (room) ini_write_real("Variables", "room", room);

ini_close();