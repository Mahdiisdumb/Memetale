.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 12
cmp.i.v GTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.con

:[end]