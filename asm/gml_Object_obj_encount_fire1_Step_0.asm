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
bf [33]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [32]

:[3]
pushi.e 205
conv.i.v
pushi.e 40
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
pushi.e 144
cmp.i.v EQ
bf [5]

:[4]
pushi.e 205
conv.i.v
pushi.e 40
conv.i.v
pushi.e 680
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
pushi.e 50
pop.v.i global.battlegroup

:[7]
push.v self.battlegroup
pushi.e 10
cmp.i.v LT
bf [9]

:[8]
pushi.e 78
pop.v.i global.battlegroup

:[9]
push.v self.battlegroup
pushi.e 6
cmp.i.v LT
bf [11]

:[10]
pushi.e 77
pop.v.i global.battlegroup

:[11]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [13]

:[12]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 51
pop.v.i global.battlegroup

:[18]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 50
pop.v.i global.battlegroup

:[20]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 52
pop.v.i global.battlegroup

:[22]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
pushi.e 77
pop.v.i global.battlegroup

:[24]
pushi.e -5
pushi.e 408
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
pushi.e 78
pop.v.i global.battlegroup

:[26]
pushi.e -5
pushi.e 408
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 19
pop.v.i global.battlegroup

:[28]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pushi.e -5
pushi.e 224
pop.v.i [array]global.flag
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
b [32]

:[30]
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
bf [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
b [end]

:[33]
pushi.e 0
pop.v.i self.steps

:[end]