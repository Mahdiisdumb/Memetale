.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
push.v self.x
pushi.e 320
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.hspeed
b [3]

:[2]
pushi.e -2
pop.v.i self.hspeed

:[3]
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]