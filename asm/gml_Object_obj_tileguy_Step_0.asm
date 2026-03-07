.localvar 0 arguments

:[0]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
push.v self.x
push.v self.prevx
pushi.e 18
add.i.v
cmp.v.v GTE
bf [3]

:[2]
push.v self.prevx
pushi.e 20
add.i.v
pop.v.v self.x
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
push.v self.moving
pushi.e 2
cmp.i.v EQ
bf [6]

:[4]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y
push.v self.y
push.v self.prevy
pushi.e 18
sub.i.v
cmp.v.v LTE
bf [6]

:[5]
push.v self.prevy
pushi.e 20
sub.i.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
push.v self.moving
pushi.e 3
cmp.i.v EQ
bf [9]

:[7]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
push.v self.x
push.v self.prevx
pushi.e 18
sub.i.v
cmp.v.v LTE
bf [9]

:[8]
push.v self.prevx
pushi.e 20
sub.i.v
pop.v.v self.x
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
push.v self.moving
pushi.e 4
cmp.i.v EQ
bf [12]

:[10]
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y
push.v self.y
push.v self.prevy
pushi.e 18
add.i.v
cmp.v.v GTE
bf [12]

:[11]
push.v self.prevy
pushi.e 20
add.i.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [18]

:[13]
push.v 1575.left
conv.v.b
not.b
bf [18]

:[14]
push.v 1575.right
conv.v.b
not.b
bf [18]

:[15]
push.v 1575.down
conv.v.b
not.b
bf [18]

:[16]
push.v 1575.up
conv.v.b
not.b
bf [18]

:[17]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[18]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1133
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[20]
push.v self.moving
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1132
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[22]
push.v self.moving
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1134
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[24]
push.v self.moving
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1131
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[26]
push.v 1575.right
conv.v.b
bf [32]

:[27]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [32]

:[28]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.image_index

:[30]
pushi.e 1133
pop.v.i self.sprite_index
push.v self.x
pushi.e 30
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 25
add.i.v
pop.v.v self.checky
pushi.e 0
pop.v.i self.thistile
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.thistile
pop.v.v self.nexttile
push.v self.nexttile
pushi.e 2
cmp.i.v NEQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.moving
push.v self.x
pop.v.v self.prevx

:[32]
push.v 1575.up
conv.v.b
bf [41]

:[33]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [41]

:[34]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.image_index

:[36]
pushi.e 1132
pop.v.i self.sprite_index
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.checky
pushi.e 0
pop.v.i self.thistile
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.thistile
pop.v.v self.nexttile
push.v self.nexttile
pushi.e 2
cmp.i.v NEQ
bf [38]

:[37]
push.v self.nexttile
pushi.e 0
cmp.i.v NEQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 2
pop.v.i self.moving
push.v self.y
pop.v.v self.prevy

:[41]
push.v 1575.left
conv.v.b
bf [50]

:[42]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [50]

:[43]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i self.image_index

:[45]
pushi.e 1134
pop.v.i self.sprite_index
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 25
add.i.v
pop.v.v self.checky
pushi.e 0
pop.v.i self.thistile
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.thistile
pop.v.v self.nexttile
push.v self.nexttile
pushi.e 2
cmp.i.v NEQ
bf [47]

:[46]
push.v self.nexttile
pushi.e 0
cmp.i.v NEQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 3
pop.v.i self.moving
push.v self.x
pop.v.v self.prevx

:[50]
push.v 1575.down
conv.v.b
bf [59]

:[51]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [59]

:[52]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e 1
pop.v.i self.image_index

:[54]
pushi.e 1131
pop.v.i self.sprite_index
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.checkx
push.v self.y
pushi.e 45
add.i.v
pop.v.v self.checky
pushi.e 0
pop.v.i self.thistile
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.thistile
pop.v.v self.nexttile
push.v self.nexttile
pushi.e 2
cmp.i.v NEQ
bf [56]

:[55]
push.v self.nexttile
pushi.e 0
cmp.i.v NEQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 4
pop.v.i self.moving
push.v self.y
pop.v.v self.prevy

:[59]
push.v self.x
pop.v.v 1576.x
push.v self.y
pop.v.v 1576.y

:[end]