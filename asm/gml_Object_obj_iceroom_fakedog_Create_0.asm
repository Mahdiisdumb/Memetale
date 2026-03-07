.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 261
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1615
pop.v.i self.sprite_index

:[end]