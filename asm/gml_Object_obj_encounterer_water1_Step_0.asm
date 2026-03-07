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
bf [26]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [25]

:[3]
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 380
conv.i.v
pushi.e 340
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [5]

:[4]
pushi.e 204
conv.i.v
pushi.e 18
conv.i.v
pushi.e 380
conv.i.v
pushi.e 1040
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
call.i floor(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 15
cmp.i.v LT
bf [7]

:[6]
pushi.e 43
pop.v.i global.battlegroup

:[7]
push.v self.battlegroup
pushi.e 11
cmp.i.v LT
bf [9]

:[8]
pushi.e 53
pop.v.i global.battlegroup

:[9]
push.v self.battlegroup
pushi.e 7
cmp.i.v LT
bf [11]

:[10]
pushi.e 40
pop.v.i global.battlegroup

:[11]
push.v self.battlegroup
pushi.e 4
cmp.i.v LT
bf [13]

:[12]
pushi.e 54
pop.v.i global.battlegroup

:[13]
pushi.e -5
pushi.e 357
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 40
pop.v.i global.battlegroup

:[15]
pushi.e -5
pushi.e 357
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 43
pop.v.i global.battlegroup

:[17]
pushi.e -5
pushi.e 357
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 53
pop.v.i global.battlegroup

:[19]
pushi.e -5
pushi.e 357
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 19
pop.v.i global.battlegroup

:[21]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pushi.e -5
pushi.e 223
pop.v.i [array]global.flag
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [25]

:[23]
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.desto
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
b [end]

:[26]
pushi.e 0
pop.v.i self.steps

:[end]