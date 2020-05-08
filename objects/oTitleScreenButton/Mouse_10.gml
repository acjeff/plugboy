show_debug_message("Hovered, show " + string(showImageOnHover));	
if (instance_exists(oTitleScreen)) oTitleScreen.indexToDraw = showImageOnHover;
if (instance_exists(oPauseScreen)) oPauseScreen.indexToDraw = showImageOnHover;