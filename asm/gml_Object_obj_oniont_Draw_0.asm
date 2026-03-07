.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.on
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.on
pushi.e 4
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [12]

:[4]
push.v self.on
pushi.e 1
cmp.i.v EQ
bt [7]

:[5]
push.v self.on
pushi.e 2
cmp.i.v EQ
bt [7]

:[6]
push.v self.on
pushi.e 3
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [11]

:[9]
push.v self.onion_blue_alpha
pushi.e 1
cmp.i.v LT
bf [11]

:[10]
push.v self.onion_blue_alpha
push.d 0.1
add.d.v
pop.v.v self.onion_blue_alpha

:[11]
push.v self.onion_blue_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.onion_blue_alpha
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.v
push.d 0.1
push.v self.onion_blue_alpha
add.v.d
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1622
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.on
pushi.e 2
cmp.i.v EQ
bt [15]

:[13]
push.v self.on
pushi.e 3
cmp.i.v EQ
bt [15]

:[14]
push.v self.on
pushi.e 4
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [51]

:[17]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1623
pop.v.i self.sprite_index

:[19]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1627
pop.v.i self.sprite_index

:[21]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1625
pop.v.i self.sprite_index

:[23]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1626
pop.v.i self.sprite_index

:[25]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1624
pop.v.i self.sprite_index

:[27]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [30]

:[28]
push.v self.type
pushi.e 1
cmp.i.v EQ
bt [30]

:[29]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
push.v self.y
push.v self.onionh
call.i floor(argc=1)
sub.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
sub.v.v
push.v self.onionh
call.i floor(argc=1)
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[33]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
push.v self.y
push.v self.onionh
call.i floor(argc=1)
sub.v.v
push.v self.x
pushi.e 22
sub.i.v
push.v self.onionh
call.i floor(argc=1)
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[35]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.v self.y
push.v self.onionh
call.i floor(argc=1)
sub.v.v
push.v self.x
pushi.e 6
sub.i.v
push.v self.onionh
call.i floor(argc=1)
push.v self.sprite_width
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[37]
push.v self.on
pushi.e 2
cmp.i.v EQ
bt [39]

:[38]
push.v self.on
pushi.e 3
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [46]

:[41]
push.v self.onionh
push.v self.sprite_height
cmp.v.v LT
bf [46]

:[42]
push.v self.special
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v self.onionh
pushi.e 1
add.i.v
pop.v.v self.onionh

:[44]
push.v self.special
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.v self.onionh
push.d 0.25
add.d.v
pop.v.v self.onionh

:[46]
push.v self.on
pushi.e 4
cmp.i.v EQ
bf [51]

:[47]
push.v self.onionh
pushi.e 0
cmp.i.v GT
bf [49]

:[48]
push.v self.onionh
pushi.e 1
sub.i.v
pop.v.v self.onionh
b [51]

:[49]
push.v self.onion_blue_alpha
pushi.e 0
cmp.i.v GT
bf [51]

:[50]
push.v self.onion_blue_alpha
push.d 0.1
sub.d.v
pop.v.v self.onion_blue_alpha

:[51]
push.v self.follow
pushi.e 1
cmp.i.v EQ
bf [end]

:[52]
push.v self.x
pushi.e 162
cmp.i.v LT
bf [54]

:[53]
push.v self.xprevious
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed

:[54]
push.v self.x
pushi.e 1048
cmp.i.v GT
bf [56]

:[55]
push.v self.xprevious
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed

:[56]
push.v self.x
push.v 1576.x
pushi.e 6
add.i.v
cmp.v.v LT
bf [58]

:[57]
push.v self.hspeed
push.d 0.17
add.d.v
pop.v.v self.hspeed

:[58]
push.v self.x
push.v 1576.x
pushi.e 16
add.i.v
cmp.v.v GT
bf [60]

:[59]
push.v self.hspeed
push.d 0.17
sub.d.v
pop.v.v self.hspeed

:[60]
push.d 0.1
pop.v.d self.friction
push.v self.x
call.i floor(argc=1)
pop.v.v self.x

:[end]