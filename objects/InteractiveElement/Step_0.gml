/// @description Insert description here
// You can write your code in this editor
toPoint = global.energy <  34 ? 200 : global.energy * 6
if (life < 0) life = 0;
if (energy != "infinite" && energy < 0) energy = 0;
if (instance_exists(oGlowbie) && instance_exists(oPlayer)) {
	withinRange = point_distance(x, y, global.energyProxObj.x, global.energyProxObj.y) < toPoint;
	
	if (withinRange) {
			var xVal = x;
			var yVal = y;
			var distance = point_distance(x, y, global.energyProxObj.x, global.energyProxObj.y);
					
			//ROPE LOGIC
			if (!rope) {
				rope = instance_create_layer(oGlowbie.x, oGlowbie.y, "Glowbie", oRope1);
				with (rope) {
					depth = -9999;
					for ( var i = 0; i <= knotNum; i++ )
						{
						    // position of knot
							ropeLen = distance;
						    knotX[i] = xVal;
						    knotY[i] = yVal+(knotDist*i*0.25);
						    // previous position
						    knotXprev[i] = knotX[i];
						    knotYprev[i] = knotY[i];
						}
				}
			}
			if (rope) {
				with (rope) {
					ropeLen = distance;
					x = oGlowbie.x;
					y = oGlowbie.y;
					knotX[knotNum] = xVal;
					knotY[knotNum] = yVal;	
					alpha = 0.5;
				}
			}
			
}

else {
			if (rope) {
				instance_destroy(rope)
				rope = false;
			};
		}


}

if (interacting && !global.paused) {
	var current_scene = scene_info[scene];

	var len = array_length_1d(current_scene) - 1;

	switch(len) {
		case 0: script_execute(current_scene[0]); break;
		case 1: script_execute(current_scene[0], current_scene[1]);  break;
		case 2: script_execute(current_scene[0], current_scene[1], current_scene[2]);  break;
		case 3: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3]);  break;
	}
}