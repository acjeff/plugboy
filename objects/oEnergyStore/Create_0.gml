clearEnemies = false;
interactable = false;
interacting = false;
scene_info = false;
scene = 0;
timer = 0;
throwEnergyBall = false;
throwEnergyBallTimer = room_speed / 2;
dead = false;
energy = "infinite";
discharge = false;
lineAlpha = 0.3;
lineThickness = 2;
lineColor1 = c_white;
lineColor2 = c_blue;
beingAttacked = false;
enemy = false;
life = 100;
lightColor = c_green;
withinRange = false;
lightSize = 500;
dontDestroy = true;
showDeath = true;
explosionStarted = false;
rope = false;

deathScene = [
	[Explode]
]