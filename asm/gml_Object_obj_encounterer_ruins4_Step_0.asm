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
pushi.e 100
conv.i.v
pushi.e 120
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
pushi.e 20
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 4
cmp.i.v LTE
bf [6]

:[5]
pushi.e 11
pop.v.i global.battlegroup

:[6]
push.v self.battlegroup
pushi.e 4
cmp.i.v GT
bf [8]

:[7]
pushi.e 12
pop.v.i global.battlegroup

:[8]
push.v self.battlegroup
pushi.e 8
cmp.i.v GT
bf [10]

:[9]
pushi.e 13
pop.v.i global.battlegroup

:[10]
push.v self.battlegroup
pushi.e 12
cmp.i.v GT
bf [12]

:[11]
pushi.e 16
pop.v.i global.battlegroup

:[12]
push.v self.battlegroup
pushi.e 16
cmp.i.v GT
bf [14]

:[13]
pushi.e 17
pop.v.i global.battlegroup

:[14]
push.v self.battlegroup
pushi.e 19
cmp.i.v GT
bf [16]

:[15]
pushi.e 15
pop.v.i global.battlegroup

:[16]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[17]
push.v self.battlegroup
pushi.e 4
cmp.i.v LTE
bf [19]

:[18]
pushi.e 128
pop.v.i global.battlegroup

:[19]
push.v self.battlegroup
pushi.e 4
cmp.i.v GT
bf [21]

:[20]
pushi.e 129
pop.v.i global.battlegroup

:[21]
push.v self.battlegroup
pushi.e 8
cmp.i.v GT
bf [23]

:[22]
pushi.e 130
pop.v.i global.battlegroup

:[23]
push.v self.battlegroup
pushi.e 12
cmp.i.v GT
bf [25]

:[24]
pushi.e 121
pop.v.i global.battlegroup

:[25]
push.v self.battlegroup
pushi.e 16
cmp.i.v GT
bf [27]

:[26]
pushi.e 124
pop.v.i global.battlegroup

:[27]
push.v self.battlegroup
pushi.e 19
cmp.i.v GT
bf [29]

:[28]
pushi.e 132
pop.v.i global.battlegroup

:[29]
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
pushi.e 19
pop.v.i global.battlegroup

:[31]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [end]

:[33]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]