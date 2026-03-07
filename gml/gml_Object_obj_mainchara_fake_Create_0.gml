global.facing = 0;
global.interact = 0;

if ((x % 3) == 2)
    x += 1;

if ((x % 3) == 1)
    x -= 1;

if ((y % 3) == 2)
    y += 1;

if ((y % 3) == 1)
    y -= 1;

lastfacing = 0;
nnn = 0;
cutscene = 0;
oldx = x;
oldy = y;
image_speed = 0;
global.phasing = 0;
facing = global.facing;
moving = 0;
movement = 1;
dsprite = 2375;
rsprite = 2374;
usprite = 2376;
lsprite = 2373;
inwater = 0;
