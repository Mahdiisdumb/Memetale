.localvar 0 arguments

:[0]
push.v self.j
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.menuno
pushi.e 5
pop.v.i global.interact

:[2]
push.v self.j
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 7
pop.v.i global.menuno
pushi.e 5
pop.v.i global.interact

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]