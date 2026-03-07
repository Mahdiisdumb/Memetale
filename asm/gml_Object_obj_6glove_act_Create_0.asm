.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.con
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]