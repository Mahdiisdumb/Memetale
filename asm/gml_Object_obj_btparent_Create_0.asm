.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.spec
pushi.e 0
pop.v.i self.spec_x
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]