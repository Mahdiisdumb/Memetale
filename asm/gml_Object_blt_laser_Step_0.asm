.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.gravityincrement
pushi.e 1
add.i.v
pop.v.v self.gravityincrement

:[end]