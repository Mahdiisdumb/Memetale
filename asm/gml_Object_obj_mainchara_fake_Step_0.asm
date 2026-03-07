.localvar 0 arguments

:[0]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.dsprite
pop.v.v self.sprite_index

:[2]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.rsprite
pop.v.v self.sprite_index

:[4]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.usprite
pop.v.v self.sprite_index

:[6]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v self.lsprite
pop.v.v self.sprite_index

:[8]
pushi.e 0
pop.v.i self.crumpet
push.v self.bbox_top
pop.v.v self.strumpet
push.v self.bbox_left
pop.v.v self.trumpet
push.v 1575.left
conv.v.b
bf [27]

:[9]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [27]

:[10]
pushi.e 1
pop.v.i self.turned
push.v self.xprevious
push.v self.x
pushi.e 3
add.i.v
cmp.v.v EQ
bf [12]

:[11]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
b [13]

:[12]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[13]
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.image_index

:[15]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
push.v 1575.up
conv.v.b
bf [17]

:[16]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 0
pop.v.i self.turned

:[20]
push.v 1575.down
conv.v.b
bf [22]

:[21]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 0
pop.v.i self.turned

:[25]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 3
pop.v.i global.facing

:[27]
push.v 1575.up
conv.v.b
bf [43]

:[28]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [43]

:[29]
pushi.e 1
pop.v.i self.turned
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [31]

:[30]
pushi.e 1
pop.v.i self.image_index

:[31]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
push.v 1575.right
conv.v.b
bf [33]

:[32]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushi.e 0
pop.v.i self.turned

:[36]
push.v 1575.left
conv.v.b
bf [38]

:[37]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 0
pop.v.i self.turned

:[41]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
pushi.e 2
pop.v.i global.facing

:[43]
push.v 1575.right
conv.v.b
bf [63]

:[44]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [63]

:[45]
push.v 1575.left
pushi.e 0
cmp.i.v EQ
bf [63]

:[46]
pushi.e 1
pop.v.i self.turned
push.v self.xprevious
push.v self.x
pushi.e 3
sub.i.v
cmp.v.v EQ
bf [48]

:[47]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
b [49]

:[48]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[49]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.image_index

:[51]
push.v 1575.up
conv.v.b
bf [53]

:[52]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 0
pop.v.i self.turned

:[56]
push.v 1575.down
conv.v.b
bf [58]

:[57]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 0
pop.v.i self.turned

:[61]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 1
pop.v.i global.facing

:[63]
push.v 1575.down
conv.v.b
bf [80]

:[64]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [80]

:[65]
push.v 1575.up
pushi.e 0
cmp.i.v EQ
bf [80]

:[66]
pushi.e 1
pop.v.i self.turned
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [68]

:[67]
pushi.e 1
pop.v.i self.image_index

:[68]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
push.v 1575.right
conv.v.b
bf [70]

:[69]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushi.e 0
pop.v.i self.turned

:[73]
push.v 1575.left
conv.v.b
bf [75]

:[74]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e 0
pop.v.i self.turned

:[78]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 0
pop.v.i global.facing

:[80]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [82]

:[81]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[82]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [84]

:[83]
pushi.e 0
pop.v.i self.x

:[84]
push.v self.x
pushbltn.v self.room_width
push.v self.sprite_width
sub.v.v
cmp.v.v GT
bf [86]

:[85]
pushbltn.v self.room_width
push.v self.sprite_width
sub.v.v
pop.v.v self.x

:[86]
push.v self.y
pushi.e 0
cmp.i.v LT
bf [88]

:[87]
pushi.e 0
pop.v.i self.y

:[88]
push.v self.y
pushbltn.v self.room_height
push.v self.sprite_height
sub.v.v
cmp.v.v GT
bf [90]

:[89]
pushbltn.v self.room_height
push.v self.sprite_height
sub.v.v
pop.v.v self.y

:[90]
push.i 50000
push.v self.y
pushi.e 10
mul.i.v
sub.v.i
pop.v.v self.depth

:[end]