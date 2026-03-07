.localvar 0 arguments

:[0]
pushglb.v global.encounter
push.v self.steps
cmp.v.v GT
bf [end]

:[1]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [9]

:[3]
pushi.e 203
conv.i.v
pushi.e 16
conv.i.v
pushi.e 680
conv.i.v
pushi.e 840
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 0
pop.v.i global.encounter
pushi.e 135
pop.v.i global.battlegroup
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 19
pop.v.i global.battlegroup

:[5]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -5
pushi.e 222
pop.v.i [array]global.flag
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [8]

:[7]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[8]
b [end]

:[9]
pushi.e 0
pop.v.i self.steps

:[end]