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
bf [15]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [14]

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
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 0
cmp.i.v GTE
bf [5]

:[4]
pushi.e 35
pop.v.i global.battlegroup

:[5]
push.v self.battlegroup
pushi.e 8
cmp.i.v GT
bf [7]

:[6]
pushi.e 36
pop.v.i global.battlegroup

:[7]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
pushi.e 24
pop.v.i global.battlegroup
pushi.e 4
pushi.e -5
pushi.e 70
pop.v.i [array]global.flag

:[9]
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 19
pop.v.i global.battlegroup

:[11]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pushi.e -5
pushi.e 222
pop.v.i [array]global.flag
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [14]

:[13]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[14]
b [end]

:[15]
pushi.e 0
pop.v.i self.steps

:[end]