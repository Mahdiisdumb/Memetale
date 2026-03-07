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
bf [34]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [33]

:[3]
pushi.e 203
conv.i.v
pushi.e 16
conv.i.v
pushi.e 280
conv.i.v
pushi.e 140
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
call.i floor(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 0
cmp.i.v GTE
bf [5]

:[4]
pushi.e 30
pop.v.i global.battlegroup

:[5]
push.v self.battlegroup
pushi.e 8
cmp.i.v GTE
bf [7]

:[6]
pushi.e 32
pop.v.i global.battlegroup

:[7]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 30
pop.v.i global.battlegroup

:[9]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 32
pop.v.i global.battlegroup

:[11]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.plot
pushi.e 42
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 32
conv.i.v
pushi.e 30
conv.i.v
call.i choose(argc=2)
pop.v.v global.battlegroup

:[16]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.plot
pushi.e 42
cmp.i.v GTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 24
pop.v.i global.battlegroup
pushi.e 4
pushi.e -5
pushi.e 70
pop.v.i [array]global.flag

:[21]
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [23]

:[22]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 24
pop.v.i global.battlegroup
pushi.e 4
pushi.e -5
pushi.e 70
pop.v.i [array]global.flag

:[26]
pushi.e -5
pushi.e 70
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [28]

:[27]
pushi.e -5
pushi.e 70
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[28]
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [30]

:[29]
pushi.e 19
pop.v.i global.battlegroup

:[30]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pushi.e -5
pushi.e 222
pop.v.i [array]global.flag
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [33]

:[32]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[33]
b [end]

:[34]
pushi.e 0
pop.v.i self.steps

:[end]