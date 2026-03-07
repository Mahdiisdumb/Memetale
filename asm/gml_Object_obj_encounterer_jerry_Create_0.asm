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
pushi.e 30
conv.i.v
pushi.e 120
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
pushbltn.v self.room
pushi.e 57
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 64
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 203
conv.i.v
pushi.e 16
conv.i.v
pushi.e 30
conv.i.v
pushi.e 220
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[5]
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v self.room
pushi.e 67
cmp.i.v EQ
bf [end]

:[11]
pushglb.v global.plot
pushi.e 67
cmp.i.v LT
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]