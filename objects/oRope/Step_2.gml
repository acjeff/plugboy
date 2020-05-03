/// @description  Verlet integration update
// The core of movement
if (ropeLen && knotNum && lineSpriteWidth && constraintsIterations && knotDist && knotX[knotNum + 1]) {
	dt = 0.0001; // simulation speed

	for ( var i = 0; i <= knotNum; i++ )
	{
	    var tempX = knotX[i];
	    var tempY = knotY[i];
	    knotX[i] += knotX[i] - knotXprev[i] + gravX*dt;
	    knotY[i] += knotY[i] - knotYprev[i] + gravY*dt;
	    knotXprev[i] = tempX;
	    knotYprev[i] = tempY;
	}
}
