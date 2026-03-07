.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.murder
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 16
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.murder

:[2]
push.v self.murder
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[4]
pushi.e 1019
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]