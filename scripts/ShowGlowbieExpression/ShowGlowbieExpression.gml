var expression = argument0;
var ExpressionTimerMax = argument1 * room_speed;

if (!GTextObj) GTextObj = instance_create_layer(oGlowbie.x, oGlowbie.y - 50, "Text", oText);
if (!ExpressionTimer) {
	with (GTextObj) {
		font = GlowbieExpressionFont;
		text = expression;
	}
	ExpressionTimer = 1
	
	};
if (instance_exists(GTextObj) && ExpressionTimer && ExpressionTimer < ExpressionTimerMax) {
	with (GTextObj) {
		x = oGlowbie.x;
		y = oGlowbie.y - 50;
	}
	
	ExpressionTimer++;
}
if (instance_exists(GTextObj) && ExpressionTimer >= ExpressionTimerMax) {
	instance_destroy(GTextObj);
	GTextObj = 0;
	ExpressionTimer = 0;
	CutSceneEndAction();
}