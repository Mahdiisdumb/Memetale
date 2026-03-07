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
bf [30]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [29]

:[3]
pushi.e 202
conv.i.v
pushi.e 20
conv.i.v
pushi.e 210
conv.i.v
pushi.e 140
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
bf [5]

:[4]
pushi.e 202
conv.i.v
pushi.e 20
conv.i.v
pushi.e 120
conv.i.v
pushi.e 120
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[5]
pushi.e 0
pop.v.i global.encounter
pushi.e 15
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 2
cmp.i.v LTE
bf [7]

:[6]
pushi.e 18
pop.v.i global.battlegroup

:[7]
push.v self.battlegroup
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
pushi.e 11
pop.v.i global.battlegroup

:[9]
push.v self.battlegroup
pushi.e 9
cmp.i.v GT
bf [11]

:[10]
pushi.e 13
pop.v.i global.battlegroup

:[11]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [24]

:[12]
pushi.e 20
conv.i.v
call.i random(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 4
cmp.i.v LTE
bf [14]

:[13]
pushi.e 128
pop.v.i global.battlegroup

:[14]
push.v self.battlegroup
pushi.e 4
cmp.i.v GT
bf [16]

:[15]
pushi.e 129
pop.v.i global.battlegroup

:[16]
push.v self.battlegroup
pushi.e 8
cmp.i.v GT
bf [18]

:[17]
pushi.e 130
pop.v.i global.battlegroup

:[18]
push.v self.battlegroup
pushi.e 12
cmp.i.v GT
bf [20]

:[19]
pushi.e 121
pop.v.i global.battlegroup

:[20]
push.v self.battlegroup
pushi.e 16
cmp.i.v GT
bf [22]

:[21]
pushi.e 124
pop.v.i global.battlegroup

:[22]
push.v self.battlegroup
pushi.e 19
cmp.i.v GT
bf [24]

:[23]
pushi.e 132
pop.v.i global.battlegroup

:[24]
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 19
pop.v.i global.battlegroup

:[26]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [29]

:[28]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[29]
b [end]

:[30]
pushi.e 0
pop.v.i self.steps

:[end]