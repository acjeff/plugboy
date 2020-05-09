ini_open("saveData.ini");
if (global.loadFromFile && room == ini_read_real("Variables","room",0) && ini_read_real("Variables","lastCheckPointX",0)) {
	var playerX = ini_read_real("Variables","lastCheckPointX",0)
	var playerY = ini_read_real("Variables","lastCheckPointY",0);
	instance_create_layer(playerX, playerY, "Instances", oPlayer);
	if (!instance_exists(oGlowbie) && ini_read_real("Variables","glowbieExists",0)) {
		instance_create_layer(playerX - 100, playerY -100, "Glowbie", oGlowbie);
	}
	global.loadFromFile = false;
}
else {
	if (room == Room1) {
		instance_create_layer(180, 2855, "Instances", oPlayer);
	}
	else if (room == Room2) {
		instance_create_layer(128, 896, "Instances", oPlayer);
		instance_create_layer(128, 896, "Glowbie", oGlowbie);
	}
}
ini_close();