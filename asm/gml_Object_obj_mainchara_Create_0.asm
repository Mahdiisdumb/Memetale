.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e -5
pushi.e 287
push.v [array]global.flag
pushi.e -5
pushi.e 286
push.v [array]global.flag
cmp.v.v LTE
bf [3]

:[2]
pushi.e -5
pushi.e 286
push.v [array]global.flag
pushi.e 1
add.i.v
pushi.e -5
pushi.e 287
pop.v.v [array]global.flag

:[3]
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.charname
call.i scr_hardmodename(argc=1)
conv.v.b
not.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.flag

:[8]
pushi.e 0
pushi.e -5
pushi.e 462
pop.v.i [array]global.flag
push.v self.x
pushi.e 3
mod.i.v
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[10]
push.v self.x
pushi.e 3
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[12]
push.v self.y
pushi.e 3
mod.i.v
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[14]
push.v self.y
pushi.e 3
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[16]
pushi.e 0
pop.v.i self.lastfacing
pushi.e 0
pop.v.i self.nnn
pushi.e 0
pop.v.i self.cutscene
push.v self.x
pop.v.v self.oldx
push.v self.y
pop.v.v self.oldy
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i global.phasing
pushglb.v global.facing
pop.v.v self.facing
pushi.e 0
pop.v.i self.moving
pushi.e 1
pop.v.i self.movement
pushbltn.v self.room
pop.v.v global.currentroom
pushglb.v global.interact
pushi.e 3
cmp.i.v EQ
bf [40]

:[17]
pushglb.v global.entrance
pushi.e 0
cmp.i.v GT
bf [40]

:[18]
pushi.e 0
pop.v.i global.interact
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v 816.x
pop.v.v self.x
push.v 816.y
pop.v.v self.y

:[20]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.v 796.x
pop.v.v self.x
push.v 796.y
pop.v.v self.y

:[22]
pushglb.v global.entrance
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.v 797.x
pop.v.v self.x
push.v 797.y
pop.v.v self.y

:[24]
pushglb.v global.entrance
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
push.v 798.x
pop.v.v self.x
push.v 798.y
pop.v.v self.y

:[26]
pushglb.v global.entrance
pushi.e 18
cmp.i.v EQ
bf [28]

:[27]
push.v 805.x
pop.v.v self.x
push.v 805.y
pop.v.v self.y

:[28]
pushglb.v global.entrance
pushi.e 19
cmp.i.v EQ
bf [30]

:[29]
push.v 804.x
pop.v.v self.x
push.v 804.y
pop.v.v self.y

:[30]
pushglb.v global.entrance
pushi.e 20
cmp.i.v EQ
bf [32]

:[31]
push.v 803.x
pop.v.v self.x
push.v 803.y
pop.v.v self.y

:[32]
pushglb.v global.entrance
pushi.e 21
cmp.i.v EQ
bf [34]

:[33]
push.v 802.x
pop.v.v self.x
push.v 802.y
pop.v.v self.y

:[34]
pushglb.v global.entrance
pushi.e 22
cmp.i.v EQ
bf [36]

:[35]
push.v 801.x
pop.v.v self.x
push.v 801.y
pop.v.v self.y

:[36]
pushglb.v global.entrance
pushi.e 23
cmp.i.v EQ
bf [38]

:[37]
push.v 800.x
pop.v.v self.x
push.v 800.y
pop.v.v self.y

:[38]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
bf [40]

:[39]
push.v 799.x
pop.v.v self.x
push.v 799.y
pop.v.v self.y

:[40]
pushi.e 1131
pop.v.i self.dsprite
pushi.e 1133
pop.v.i self.rsprite
pushi.e 1132
pop.v.i self.usprite
pushi.e 1134
pop.v.i self.lsprite
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 1104
pop.v.i self.dsprite
pushi.e 1106
pop.v.i self.rsprite
pushi.e 1105
pop.v.i self.usprite
pushi.e 1107
pop.v.i self.lsprite

:[42]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v self.dsprite
pop.v.v self.sprite_index

:[44]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.v self.rsprite
pop.v.v self.sprite_index

:[46]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [48]

:[47]
push.v self.usprite
pop.v.v self.sprite_index

:[48]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [50]

:[49]
push.v self.lsprite
pop.v.v self.sprite_index

:[50]
pushi.e -5
pushi.e 480
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[52]
pushi.e 0
pop.v.i self.inwater
pushi.e 0
pop.v.i self.h_skip
pushi.e 0
pop.v.i self.uncan
pushi.e 0
pop.v.i self.m_override

:[end]