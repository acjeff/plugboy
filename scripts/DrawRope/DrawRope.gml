var layerName = argument0;
var startX = argument1;
var startY = argument2;
var endX = argument3;
var endY = argument4;
var slineType = argument5;


if (!rope) {
				rope = instance_create_layer(startX, startY, layerName, oRope1);
				with (rope) {
					depth = -9999;
					for ( var i = 0; i <= knotNum; i++ )
						{
						    // position of knot
							ropeLen = point_distance(startX, startY, endX, endY);
						    knotX[i] = endX;
						    knotY[i] = endY+(knotDist*i*0.25);
						    // previous position
						    knotXprev[i] = knotX[i];
						    knotYprev[i] = knotY[i];
						}
				}
			}
			if (rope) {
				with (rope) {			
					lineType = slineType;
					ropeLen = point_distance(startX, startY, endX, endY);
					x = startX;
					y = startY;
					knotX[knotNum] = endX;
					knotY[knotNum] = endY;	
					alpha = 0.5;	
					
				}
			}