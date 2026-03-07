.localvar 0 arguments

:[0]
pushi.e 1443
pop.v.i self.dsprite
pushi.e 1452
pop.v.i self.usprite
pushi.e 1457
pop.v.i self.lsprite
pushi.e 1453
pop.v.i self.rsprite
pushi.e 1443
pop.v.i self.dtsprite
pushi.e 1452
pop.v.i self.utsprite
pushi.e 1457
pop.v.i self.ltsprite
pushi.e 1453
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.room
pushi.e 50
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 43
cmp.i.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.plot
pushi.e 46
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v self.room
pushi.e 64
cmp.i.v EQ
bf [12]

:[11]
pushglb.v global.plot
pushi.e 64
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
pushi.e 0
pop.v.i self.gone
pushi.e -5
pushi.e 413
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [17]

:[16]
pushi.e 1
pop.v.i self.gone

:[17]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i self.gone

:[19]
pushglb.v global.plot
pushi.e 200
cmp.i.v GT
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [23]

:[22]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
pop.v.i self.murder

:[26]
pushi.e -5
pushi.e 203
push.v [array]global.flag
pushi.e 16
cmp.i.v GTE
bf [28]

:[27]
pushi.e 1
pop.v.i self.murder

:[28]
pushbltn.v self.room
pushi.e 50
cmp.i.v EQ
bf [30]

:[29]
push.v self.murder
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.i self.gone

:[33]
pushbltn.v self.room
pushi.e 53
cmp.i.v EQ
bf [35]

:[34]
push.v self.murder
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 1
pop.v.i self.gone

:[38]
push.v self.gone
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
pushi.e 0
pop.v.i self.s_click

:[end]