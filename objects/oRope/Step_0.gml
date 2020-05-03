/// @description  Satisfy Constraints
if (ropeLen && knotNum && lineSpriteWidth && constraintsIterations && knotDist) {
	repeat constraintsIterations
	{
	    // Springs - connections between 2 knots
	    for ( var i = 0; i < knotNum; i++ )
	    {
	        var diff = point_distance(knotX[i], knotY[i], knotX[i+1], knotY[i+1]);
	        var diffD  = point_direction(knotX[i], knotY[i], knotX[i+1], knotY[i+1]);
        
	        diff *= knotDist*knotDist/(diff*diff+knotDist*knotDist)-0.5;
	        knotX[i] -= lengthdir_x(diff, diffD);
	        knotX[i+1] += lengthdir_x(diff, diffD); 
	        knotY[i] -= lengthdir_y(diff, diffD);
	        knotY[i+1] += lengthdir_y(diff, diffD);   
	    }    

	    // pin root knot to screen
	    knotX[0] = x;
	    knotY[0] = y;
     
	    // move last knot to mouse
	    //if ( mouse_check_button(mb_left) )
	    //{
	    //    knotX[knotNum] = mouse_x;
	    //    knotY[knotNum] = mouse_y;
	    //    knotXprev[knotNum] = mouse_x;
	    //    knotYprev[knotNum] = mouse_y;
	    //}
    
	    // move root knot to mouse
	    //if ( mouse_check_button(mb_right) )
	    //{
	    //    x = mouse_x;
	    //    y = mouse_y;
	    //}
    
	    // collision
	    // if current knot position meets collider then move it back to previous position
	    //for ( var i = 0; i <= knotNum; i++ )
	    //{        
	    //    var velX = knotX[i]-knotXprev[i];
	    //    var velY = knotY[i]-knotYprev[i];
	    //    if ( position_meeting(knotX[i]+velX, knotY[i], oCollider) )
	    //        knotX[i] = knotXprev[i];
	    //    if ( position_meeting(knotX[i], knotY[i]+velY, oCollider) )
	    //        knotY[i] = knotYprev[i];
	    //}
	}
}
