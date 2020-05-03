/// @description  Init rope
lineType = sLine;
alpha = 1;
gravX = 0;
gravY = 2300;
ropeLen = 10;
knotNum = 40;
drawKnots = false;
lineSpriteWidth = 28; // this 4 is here because i have X origin moved a little

/* more iterations means better precision 
   and stronger connections between knots but it's slower to compute
*/
constraintsIterations = 3; 

// build initial state of rope
knotDist = ropeLen/knotNum;

