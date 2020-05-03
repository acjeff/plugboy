if (ropeLen && knotNum && lineSpriteWidth && constraintsIterations && knotDist && knotX[knotNum + 1] && x && y) {
	with (oRope) {
		/// Draw line with knots
		//draw_set_color(c_red);
		draw_text(x, y - 200, "Rope len:" + string(ropeLen));

		// draw lines
		for ( var i = 1; i <= knotNum; i++ )
		{
		    var scale = point_distance(knotX[i], knotY[i], knotX[i-1], knotY[i-1])/lineSpriteWidth;  
		    var rot = point_direction(knotX[i], knotY[i], knotX[i-1], knotY[i-1]);
    
		    draw_sprite_ext(sLine, 0, knotX[i], knotY[i], scale, 1, rot, -1, 1 );
		}
	}
}