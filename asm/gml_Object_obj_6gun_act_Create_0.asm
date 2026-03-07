.localvar 0 arguments

:[0]
pushi.e -4
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.friction
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]