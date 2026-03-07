.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushglb.v global.encounter
push.v self.steps
cmp.v.v GT
bf [end]

:[1]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
bf [50]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [49]

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
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [7]

:[6]
pushi.e 205
conv.i.v
pushi.e 40
conv.i.v
pushi.e 120
conv.i.v
pushi.e 70
conv.i.v
pushi.e 105
conv.i.v
call.i script_execute(argc=5)
popz.v

:[7]
pushi.e 0
pop.v.i global.encounter
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.battlegroup
push.v self.battlegroup
pushi.e 15
cmp.i.v LTE
bf [9]

:[8]
pushi.e 66
pop.v.i global.battlegroup

:[9]
push.v self.battlegroup
pushi.e 12
cmp.i.v LTE
bf [11]

:[10]
pushi.e 64
pop.v.i global.battlegroup

:[11]
push.v self.battlegroup
pushi.e 9
cmp.i.v LTE
bf [13]

:[12]
pushi.e 65
pop.v.i global.battlegroup

:[13]
push.v self.battlegroup
pushi.e 4
cmp.i.v EQ
bt [16]

:[14]
push.v self.battlegroup
pushi.e 5
cmp.i.v EQ
bt [16]

:[15]
push.v self.battlegroup
pushi.e 6
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 68
pop.v.i global.battlegroup

:[19]
push.v self.battlegroup
pushi.e 3
cmp.i.v EQ
bt [21]

:[20]
push.v self.battlegroup
pushi.e 2
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
pushi.e 67
pop.v.i global.battlegroup

:[24]
push.v self.battlegroup
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 60
pop.v.i global.battlegroup

:[26]
push.v self.battlegroup
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 59
pop.v.i global.battlegroup

:[28]
pushi.e -5
pushi.e 8
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [30]

:[29]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
pushi.e -5
pushi.e 426
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 62
pop.v.i global.battlegroup

:[35]
pushi.e -5
pushi.e 426
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 64
pop.v.i global.battlegroup

:[37]
pushi.e -5
pushi.e 426
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e 65
pop.v.i global.battlegroup

:[39]
pushi.e -5
pushi.e 426
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushi.e 66
pop.v.i global.battlegroup

:[41]
pushi.e -5
pushi.e 426
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [43]

:[42]
pushi.e 68
pop.v.i global.battlegroup

:[43]
pushi.e -5
pushi.e 426
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
push.v self.alldead
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
pushi.e 19
pop.v.i global.battlegroup

:[45]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 19
pop.v.i global.battlegroup
pushi.e 2
pop.v.i self.alldead
pushi.e 1
pushi.e -5
pushi.e 225
pop.v.i [array]global.flag
b [49]

:[47]
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
bf [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
b [end]

:[50]
pushi.e 0
pop.v.i self.steps

:[end]