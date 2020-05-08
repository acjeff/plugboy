move_snap(1, 1);

if (!global.paused) {
	phy_position_x += ((targetX) - x) / (random_range(15, 50));
	phy_position_y += ((targetY) - y) / (random_range(15, 50));
}