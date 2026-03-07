.localvar 0 arguments

:[0]
pushglb.v global.encounter
push.v self.steps
cmp.v.v GT
bf [end]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 202
conv.i.v
pushi.e 20
conv.i.v
pushi.e 80
conv.i.v
pushi.e 190
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 202
conv.i.v
pushi.e 20
conv.i.v
pushi.e 60
conv.i.v
pushi.e 100
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[4]
pushi.e 0
pop.v.i global.encounter
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[5]
pushi.e 2
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 1
cmp.i.v LTE
bf [7]

:[6]
pushi.e 4
pop.v.i global.battlegroup

:[7]
push.v self.battlegroup
pushi.e 1
cmp.i.v GT
bf [9]

:[8]
pushi.e 5
pop.v.i global.battlegroup

:[9]
b [16]

:[10]
pushi.e 3
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 1
cmp.i.v LTE
bf [12]

:[11]
pushi.e 126
pop.v.i global.battlegroup

:[12]
push.v self.battlegroup
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
pushi.e 125
pop.v.i global.battlegroup

:[14]
push.v self.battlegroup
pushi.e 2
cmp.i.v GT
bf [16]

:[15]
pushi.e 120
pop.v.i global.battlegroup

:[16]
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
pushi.e 19
pop.v.i global.battlegroup

:[18]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [end]

:[20]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]