image_speed = 0;

if (room == room_shop1)
    x = obj_shop1.shx + 27;
else
    instance_destroy();

y = 50;
global.faceemotion = 0;
an = 0;
facespr[0] = 948;
facespr[1] = 953;
facespr[2] = 952;
facespr[3] = 954;
facespr[4] = 951;
facespr[5] = 950;
facespr[6] = 949;

if (scr_murderlv() >= 7)
    instance_destroy();
