showDead = false;
wait = room_speed * 3;
global.lastCheckPointX = 0;
global.lastCheckPointY = 0;

global.energy = 0;
global.totalEnergyCapacity = 1000;

global.life = 3;
global.totalLifeCapacity = 3;
depth = -9999;
room_goto(TestRoom);
//room_goto(Room1);
//room_goto(Room2);