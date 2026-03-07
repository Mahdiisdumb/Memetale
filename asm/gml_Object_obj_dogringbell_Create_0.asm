.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushglb.v global.plot
pushi.e 64
cmp.i.v GTE
bf [4]

:[3]
pushi.e 948
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.td

:[end]