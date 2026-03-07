.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.on
push.v self.sprite_index
call.i scr_getsprite(argc=1)
pop.v.v self.sprite_index

:[end]