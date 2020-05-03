/// @description  Verlet integration update
// The core of movement

dt = 0.0001; // simulation speed

for ( var i = 0; i <= knotNum; i++ )
{
    var tempX = knotX[i];
    var tempY = knotY[i];
    if (abs(knotX[i] - knotXprev[i]) < 5) knotX[i] += knotX[i] - knotXprev[i] + gravX*dt;
    if (abs(knotY[i] - knotYprev[i]) < 5) knotY[i] += knotY[i] - knotYprev[i] + gravY*dt;
    knotXprev[i] = tempX;
    knotYprev[i] = tempY;
}

