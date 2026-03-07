.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.alldead
pushi.e 0
pop.v.i global.encounter
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 30
conv.i.v
pushi.e 360
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[5]
pushi.e -5
pushi.e 204
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]