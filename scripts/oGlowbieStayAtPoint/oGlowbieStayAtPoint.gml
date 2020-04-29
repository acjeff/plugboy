targetX = goToX;
targetY = goToY;

// Update object position
x += ((targetX - x) / random_range(15, 50));
y += ((targetY - y) / random_range(15, 50));