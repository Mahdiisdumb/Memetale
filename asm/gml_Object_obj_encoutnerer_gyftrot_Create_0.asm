.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.alldead
pushi.e 0
pop.v.i global.encounter
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 203
conv.i.v
pushi.e 16
conv.i.v
pushi.e 30
conv.i.v
pushi.e 160
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
b [3]

:[2]
pushi.e 203
conv.i.v
pushi.e 16
conv.i.v
pushi.e 30
conv.i.v
pushi.e 300
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[3]
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]