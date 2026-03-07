.localvar 0 arguments
.localvar 1 sprint 10899

:[0]
pushi.e 1
pop.v.i local.sprint
pushi.e 120
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [3]

:[1]
pushi.e 88
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [3]

:[2]
pushi.e 16
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.d 1.5
pop.v.d local.sprint

:[6]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [99]

:[7]
push.v 1575.left
conv.v.b
bf [30]

:[8]
pushi.e 1
pop.v.i self.turned
push.v self.xprevious
push.v self.x
pushi.e 3
add.i.v
cmp.v.v EQ
bf [10]

:[9]
push.v self.x
pushi.e 2
pushloc.v local.sprint
mul.v.i
sub.v.v
pop.v.v self.x
b [11]

:[10]
push.v self.x
pushi.e 3
pushloc.v local.sprint
mul.v.i
sub.v.v
pop.v.v self.x

:[11]
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.image_index

:[13]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x

:[18]
push.v 1575.up
conv.v.b
bf [20]

:[19]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e 0
pop.v.i self.turned

:[23]
push.v 1575.down
conv.v.b
bf [25]

:[24]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 0
pop.v.i self.turned

:[28]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3
pop.v.i global.facing

:[30]
push.v 1575.right
conv.v.b
bf [32]

:[31]
push.v 1575.left
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [56]

:[34]
pushi.e 1
pop.v.i self.turned
push.v self.xprevious
push.v self.x
pushi.e 3
sub.i.v
cmp.v.v EQ
bf [36]

:[35]
push.v self.x
pushi.e 2
pushloc.v local.sprint
mul.v.i
add.v.v
pop.v.v self.x
b [37]

:[36]
push.v self.x
pushi.e 3
pushloc.v local.sprint
mul.v.i
add.v.v
pop.v.v self.x

:[37]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [39]

:[38]
pushi.e 1
pop.v.i self.image_index

:[39]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x

:[44]
push.v 1575.up
conv.v.b
bf [46]

:[45]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 0
pop.v.i self.turned

:[49]
push.v 1575.down
conv.v.b
bf [51]

:[50]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 0
pop.v.i self.turned

:[54]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i global.facing

:[56]
push.v 1575.up
conv.v.b
bf [76]

:[57]
pushi.e 1
pop.v.i self.turned
push.v self.y
pushi.e 3
pushloc.v local.sprint
mul.v.i
sub.v.v
pop.v.v self.y
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.image_index

:[59]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[64]
push.v 1575.right
conv.v.b
bf [66]

:[65]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 0
pop.v.i self.turned

:[69]
push.v 1575.left
conv.v.b
bf [71]

:[70]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 0
pop.v.i self.turned

:[74]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 2
pop.v.i global.facing

:[76]
push.v 1575.down
conv.v.b
bf [78]

:[77]
push.v 1575.up
pushi.e 0
cmp.i.v EQ
b [79]

:[78]
push.e 0

:[79]
bf [99]

:[80]
pushi.e 1
pop.v.i self.turned
push.v self.y
pushi.e 3
pushloc.v local.sprint
mul.v.i
add.v.v
pop.v.v self.y
push.v self.moving
pushi.e 1
cmp.i.v NEQ
bf [82]

:[81]
pushi.e 1
pop.v.i self.image_index

:[82]
pushi.e 1
pop.v.i self.moving
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
pushi.e 8
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y

:[87]
push.v 1575.right
conv.v.b
bf [89]

:[88]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 0
pop.v.i self.turned

:[92]
push.v 1575.left
conv.v.b
bf [94]

:[93]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 0
pop.v.i self.turned

:[97]
push.v self.turned
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
pushi.e 0
pop.v.i global.facing

:[99]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
push.v self.dsprite
pop.v.v self.sprite_index

:[101]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
push.v self.rsprite
pop.v.v self.sprite_index

:[103]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [105]

:[104]
push.v self.usprite
pop.v.v self.sprite_index

:[105]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [107]

:[106]
push.v self.lsprite
pop.v.v self.sprite_index

:[107]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 822
conv.i.v
push.v self.bbox_top
pushi.e 3
sub.i.v
push.v self.bbox_left
pushi.e 3
sub.i.v
call.i collision_point(argc=5)
pushi.e -4
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1
conv.i.v
b [110]

:[109]
pushi.e 2
conv.i.v

:[110]
pop.v.v self.crumpet
push.v self.bbox_top
pop.v.v self.strumpet
push.v self.bbox_left
pop.v.v self.trumpet
pushglb.v global.inbattle
pushi.e 1
cmp.i.v EQ
bf [120]

:[111]
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
pushi.e 153
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[113]
pushi.e 0
pop.v.i self.room_persistent
pushi.e 0
pop.v.i global.inbattle
pushglb.v global.specialbattle
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
pushi.e 0
pop.v.i global.interact

:[115]
pushi.e 100
pop.v.i self.depth
pushi.e -5
pushi.e 200
push.v [array]global.flag
pushi.e 0
cmp.i.v NEQ
bf [117]

:[116]
pushi.e -5
pushi.e 201
push.v [array]global.flag
pushglb.v global.kills
cmp.v.v NEQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
pushi.e -5
pushi.e -5
pushi.e 200
push.v [array]global.flag
conv.v.i
dup.i 1
push.v [array]global.flag
pushglb.v global.kills
pushi.e -5
pushi.e 201
push.v [array]global.flag
sub.v.v
add.v.v
pop.i.v [array]global.flag

:[120]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [122]

:[121]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[122]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [124]

:[123]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[124]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 795
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
conv.v.i
pushenv [126]

:[125]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[126]
popenv [125]
pushi.e 143
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[127]
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
push.v self.dsprite
pushi.e 1104
cmp.i.v EQ
b [130]

:[129]
push.e 0

:[130]
bf [end]

:[131]
push.i 50000
push.v self.y
pushi.e 10
mul.i.v
pushi.e 300
add.i.v
sub.v.i
pop.v.v self.depth

:[end]