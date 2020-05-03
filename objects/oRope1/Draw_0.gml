//with (oRope1) {
/// Draw line with knots
//draw_set_color(c_red);
// draw lines
for ( var i = 1; i <= knotNum; i++ )
{
    var scale = point_distance(knotX[i], knotY[i], knotX[i-1], knotY[i-1])/lineSpriteWidth;  
    var rot = point_direction(knotX[i], knotY[i], knotX[i-1], knotY[i-1]);
    
    draw_sprite_ext(lineType, irandom_range(0, 3), knotX[i], knotY[i], scale, 1, rot, -1, alpha);
}
