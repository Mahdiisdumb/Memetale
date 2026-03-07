.localvar 0 arguments

:[0]
push.v self.closemove
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.x
push.v 1576.x
push.v self.xfer
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v 1576.y
push.v self.yfer
sub.v.v
add.v.v
pop.v.v self.y
pushbltn.v self.room
pushi.e 106
cmp.i.v EQ
bf [7]

:[2]
push.v self.y
pushi.e 100
cmp.i.v LT
bf [4]

:[3]
pushi.e 100
pop.v.i self.y

:[4]
push.v self.x
pushi.e 1500
cmp.i.v LT
bf [7]

:[5]
push.v self.y
pushi.e 150
cmp.i.v GT
bf [7]

:[6]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y

:[7]
pushbltn.v self.room
pushi.e 107
cmp.i.v EQ
bf [26]

:[8]
push.v self.y
pushi.e 915
cmp.i.v GT
bf [10]

:[9]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y

:[10]
push.v self.y
pushi.e 850
cmp.i.v LT
bf [14]

:[11]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [13]

:[12]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[13]
b [19]

:[14]
push.v self.x
pushi.e 166
cmp.i.v GT
bf [16]

:[15]
push.v self.y
pushi.e 857
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 857
pop.v.i self.y

:[19]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [21]

:[20]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[21]
push.v self.y
push.v 1160.y
cmp.v.v GT
bf [23]

:[22]
pushi.e -5
pushi.e 91
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 3
pushi.e -5
pushi.e 91
pop.v.i [array]global.flag
pushi.e 0
pop.v.i self.speed
push.v self.rtsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 8
pop.v.i self.follow
pushi.e 25
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[26]
pushglb.v global.facing
pop.v.v self.facing
push.v 1576.image_speed
pop.v.v self.image_speed
push.v self.facing
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.dsprite
pop.v.v self.sprite_index

:[28]
push.v self.facing
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.v self.rsprite
pop.v.v self.sprite_index

:[30]
push.v self.facing
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.v self.usprite
pop.v.v self.sprite_index

:[32]
push.v self.facing
pushi.e 3
cmp.i.v EQ
bf [34]

:[33]
push.v self.lsprite
pop.v.v self.sprite_index

:[34]
pushi.e 0
pop.v.i self.closemove

:[end]