if (instance_exists(oTitleScreen)) {
	if (file_exists("saveData.ini")) oTitleScreen.indexToDraw = 4;
	else oTitleScreen.indexToDraw = 0;
	
};
if (instance_exists(oPauseScreen)) oPauseScreen.indexToDraw = 0;