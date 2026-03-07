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
bf [28]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [27]

:[3]
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 380
conv.i.v
pushi.e 640
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [5]

:[4]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 50
conv.i.v
pushi.e 120
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[8]
pushi.e 0
pop.v.i global.encounter
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 15
cmp.i.v LT
bf [10]

:[9]
pushi.e 54
pop.v.i global.battlegroup

:[10]
push.v self.battlegroup
pushi.e 10
cmp.i.v LT
bf [12]

:[11]
pushi.e 55
pop.v.i global.battlegroup

:[12]
push.v self.battlegroup
pushi.e 4
cmp.i.v LT
bf [14]

:[13]
pushi.e 41
pop.v.i global.battlegroup

:[14]
pushi.e -5
pushi.e 358
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 41
pop.v.i global.battlegroup

:[16]
pushi.e -5
pushi.e 358
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 42
pop.v.i global.battlegroup

:[18]
pushi.e -5
pushi.e 358
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 54
pop.v.i global.battlegroup

:[20]
pushi.e -5
pushi.e 358
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
pushi.e 55
pop.v.i global.battlegroup

:[22]
pushi.e -5
pushi.e 358
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 19
pop.v.i global.battlegroup

:[24]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pushi.e -5
pushi.e 223
pop.v.i [array]global.flag
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [27]

:[26]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[27]
b [end]

:[28]
pushi.e 0
pop.v.i self.steps

:[end]