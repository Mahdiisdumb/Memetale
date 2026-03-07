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
pushi.e 160
conv.i.v
pushi.e 130
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
pushi.e 120
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[4]
pushi.e 0
pop.v.i global.encounter
pushi.e 15
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 2
cmp.i.v LTE
bf [6]

:[5]
pushi.e 18
pop.v.i global.battlegroup

:[6]
push.v self.battlegroup
pushi.e 2
cmp.i.v GT
bf [8]

:[7]
pushi.e 11
pop.v.i global.battlegroup

:[8]
push.v self.battlegroup
pushi.e 9
cmp.i.v GT
bf [10]

:[9]
pushi.e 13
pop.v.i global.battlegroup

:[10]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[11]
pushi.e 20
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 4
cmp.i.v LTE
bf [13]

:[12]
pushi.e 128
pop.v.i global.battlegroup

:[13]
push.v self.battlegroup
pushi.e 4
cmp.i.v GT
bf [15]

:[14]
pushi.e 129
pop.v.i global.battlegroup

:[15]
push.v self.battlegroup
pushi.e 8
cmp.i.v GT
bf [17]

:[16]
pushi.e 130
pop.v.i global.battlegroup

:[17]
push.v self.battlegroup
pushi.e 12
cmp.i.v GT
bf [19]

:[18]
pushi.e 121
pop.v.i global.battlegroup

:[19]
push.v self.battlegroup
pushi.e 16
cmp.i.v GT
bf [21]

:[20]
pushi.e 124
pop.v.i global.battlegroup

:[21]
push.v self.battlegroup
pushi.e 19
cmp.i.v GT
bf [23]

:[22]
pushi.e 132
pop.v.i global.battlegroup

:[23]
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e 19
pop.v.i global.battlegroup

:[25]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [end]

:[27]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]