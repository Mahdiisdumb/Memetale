.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 277
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 40
cmp.i.v GTE
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 1
cmp.i.v LTE
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]