.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.alldead
pushi.e 0
pop.v.i global.encounter
pushi.e 203
conv.i.v
pushi.e 16
conv.i.v
pushi.e 150
conv.i.v
pushi.e 3600
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushi.e -5
pushi.e 283
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]