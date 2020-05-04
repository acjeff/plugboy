//Burn length 0
//Flames size

if (!explosionStarted) {
	explosionStarted = 1;
	//startingX = x;
}
else if (explosionStarted > argument0) {
	//instance_destroy(explosionFluid);
	scene++
	//CutSceneEndAction();
	if (explosionFluid) {
		with (explosionFluid) {
			showFire = false;
		}
	}
	//explosionStarted = 0;
	//explosionFluid = false;
	
}
else {
	if (explosionFluid) {
		with (explosionFluid) {
			showFire = true;
		}
	}
	explosionStarted++;
}

//draw_text(x - 100, y - 400, "IM DEAD BOI");

if (!explosionFluid && explosionStarted) {
	//var bindToX = x;
	//var objStarX = startingX;
	explosionFluid = instance_create_layer(x, y, "NPCs", oFire);
	//with (explosionFluid) {
	//	if (objStarX < bindToX) xVel = -5
	//	else if (objStarX > bindToX) xVel = 5;
	//	showFire = true;
	//}
}
else {
	var bindToX = x;
	var bindToY = y;
	with (explosionFluid) {
		x = bindToX;
		y = bindToY;
	}
}