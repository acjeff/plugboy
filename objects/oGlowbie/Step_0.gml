toPoint = global.energy <  34 ? 200 : global.energy * 6

if (instance_exists(global.energyProxObj)) withinRange = point_distance(oEnergyStore.x, oEnergyStore.y, global.energyProxObj.x, global.energyProxObj.y) < toPoint;

if (!withinRange) imageIndex = GlowbieBlue;

var noActionsHappening = true;
var i;
for (i = 0; i < instance_number(oEnergyStore); i += 1) {
	var thisInstance = instance_find(oEnergyStore, i);
	if ((thisInstance.discharge && thisInstance.withinRange && (global.energy < global.totalEnergyCapacity)) || thisInstance.beingAttacked || thisInstance.throwEnergyBall) {
		noActionsHappening = false;
	 }
}

if (noActionsHappening) imageIndex = GlowbieBlue;


lightSize = (global.energy * 8) - 1;
if (state) {
	script_execute(state);
}