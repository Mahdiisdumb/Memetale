.localvar 0 arguments

:[0]
push.v self.start
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha
b [4]

:[3]
pushi.e 0
pop.v.i self.start

:[4]
push.v self.dontdraw
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
push.v self.x
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.con

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [27]

:[9]
push.v self.s_offset
pushi.e 1
sub.i.v
pop.v.v self.s_offset
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [14]

:[10]
push.v self.o_o
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
pushi.e 148
sub.i.v
push.v self.x
push.v self.s_offset
sub.v.v
pushi.e 22
sub.i.v
push.v self.image_index
pushi.e 2495
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[12]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
pushi.e 148
sub.i.v
push.v self.x
push.v self.s_offset
add.v.v
pushi.e 22
sub.i.v
push.v self.image_index
pushi.e 2495
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [19]

:[15]
push.v self.o_o
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
pushi.e 148
sub.i.v
push.v self.x
push.v self.s_offset
sub.v.v
pushi.e 22
add.i.v
push.v self.image_index
pushi.e 2495
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[17]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
pushi.e 148
sub.i.v
push.v self.x
push.v self.s_offset
add.v.v
pushi.e 22
add.i.v
push.v self.image_index
pushi.e 2495
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[19]
push.v self.o_o
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.o_o
b [22]

:[21]
pushi.e 0
pop.v.i self.o_o

:[22]
push.v self.s_offset
pushi.e 1
cmp.i.v LTE
bf [27]

:[23]
push.v self.sm
conv.v.i
pushenv [25]

:[24]
pushi.e 8
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
popenv [24]
pushi.e 2497
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.con
pushi.e 999
pop.v.i self.timer
pushi.e 999
pop.v.i self.timer
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 14
push.v self.sm
conv.v.i
pushi.e 5
pop.v.i [array]self.alarm

:[27]
push.v self.twinkle
pushi.e 0
cmp.i.v EQ
bf [79]

:[28]
push.v self.h_mode
pushi.e 0
cmp.i.v EQ
bf [45]

:[29]
push.v self.timer
pushi.e 107
cmp.i.v EQ
bf [33]

:[30]
push.v self.sm
conv.v.i
pushenv [32]

:[31]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[32]
popenv [31]

:[33]
push.v self.timer
pushi.e 105
cmp.i.v GT
bf [35]

:[34]
push.v self.timer
pushi.e 116
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bf [45]

:[37]
push.v self.y
push.d 0.5
sub.d.v
pop.v.v self.y
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [41]

:[38]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 4
add.i.v
pop.i.v [stacktop]self.headrot
push.v self.sm
conv.v.i
pushenv [40]

:[39]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[40]
popenv [39]
push.v self.image_angle
pushi.e 1
add.i.v
pop.v.v self.image_angle

:[41]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [45]

:[42]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 4
sub.i.v
pop.i.v [stacktop]self.headrot
push.v self.sm
conv.v.i
pushenv [44]

:[43]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[44]
popenv [43]
push.v self.image_angle
pushi.e 1
sub.i.v
pop.v.v self.image_angle

:[45]
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [62]

:[46]
push.v self.timer
pushi.e 110
cmp.i.v EQ
bf [50]

:[47]
push.v self.sm
conv.v.i
pushenv [49]

:[48]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[49]
popenv [48]

:[50]
push.v self.timer
pushi.e 108
cmp.i.v GT
bf [52]

:[51]
push.v self.timer
pushi.e 116
cmp.i.v LT
b [53]

:[52]
push.e 0

:[53]
bf [62]

:[54]
push.v self.y
push.d 0.75
sub.d.v
pop.v.v self.y
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [58]

:[55]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 6
add.i.v
pop.i.v [stacktop]self.headrot
push.v self.sm
conv.v.i
pushenv [57]

:[56]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[57]
popenv [56]
push.v self.image_angle
push.d 1.5
add.d.v
pop.v.v self.image_angle

:[58]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [62]

:[59]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 6
sub.i.v
pop.i.v [stacktop]self.headrot
push.v self.sm
conv.v.i
pushenv [61]

:[60]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[61]
popenv [60]
push.v self.image_angle
push.d 1.5
sub.d.v
pop.v.v self.image_angle

:[62]
push.v self.h_mode
pushi.e 2
cmp.i.v EQ
bf [79]

:[63]
push.v self.timer
pushi.e 113
cmp.i.v EQ
bf [67]

:[64]
push.v self.sm
conv.v.i
pushenv [66]

:[65]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[66]
popenv [65]

:[67]
push.v self.timer
pushi.e 111
cmp.i.v GT
bf [69]

:[68]
push.v self.timer
pushi.e 116
cmp.i.v LT
b [70]

:[69]
push.e 0

:[70]
bf [79]

:[71]
push.v self.y
push.d 1.5
sub.d.v
pop.v.v self.y
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [75]

:[72]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 12
add.i.v
pop.i.v [stacktop]self.headrot
push.v self.sm
conv.v.i
pushenv [74]

:[73]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[74]
popenv [73]
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle

:[75]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [79]

:[76]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 12
sub.i.v
pop.i.v [stacktop]self.headrot
push.v self.sm
conv.v.i
pushenv [78]

:[77]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[78]
popenv [77]
push.v self.image_angle
pushi.e 3
sub.i.v
pop.v.v self.image_angle

:[79]
push.v self.twinkle
pushi.e 1
cmp.i.v EQ
bf [101]

:[80]
push.v self.timer
pushi.e 90
cmp.i.v GT
bf [82]

:[81]
push.v self.timer
pushi.e 105
cmp.i.v LT
b [83]

:[82]
push.e 0

:[83]
bf [92]

:[84]
pushi.e 1
pop.v.i self.blazing
push.v self.y
push.d 0.5
sub.d.v
pop.v.v self.y
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [88]

:[85]
push.v self.sm
conv.v.i
pushenv [87]

:[86]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[87]
popenv [86]
push.v self.image_angle
push.d 1.5
add.d.v
pop.v.v self.image_angle

:[88]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [92]

:[89]
push.v self.sm
conv.v.i
pushenv [91]

:[90]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[91]
popenv [90]
push.v self.image_angle
push.d 1.5
sub.d.v
pop.v.v self.image_angle

:[92]
push.v self.timer
pushi.e 90
cmp.i.v GT
bf [94]

:[93]
push.v self.timer
pushi.e 115
cmp.i.v LT
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 5
pop.v.i self.shake

:[97]
push.v self.timer
pushi.e 115
cmp.i.v EQ
bf [99]

:[98]
pushi.e 0
pop.v.i self.shake

:[99]
push.v self.timer
pushi.e 120
cmp.i.v EQ
bf [101]

:[100]
pushi.e 0
pop.v.i self.blazing

:[101]
push.v self.timer
pushi.e 124
cmp.i.v EQ
bf [105]

:[102]
push.v self.sm
conv.v.i
pushenv [104]

:[103]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[104]
popenv [103]
push.v self.king
conv.v.i
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.dontdraw
pushi.e 5
pop.v.i self.smear

:[105]
push.v self.timer
pushi.e 124
cmp.i.v GTE
bf [107]

:[106]
push.v self.timer
pushi.e 127
cmp.i.v LT
b [108]

:[107]
push.e 0

:[108]
bf [116]

:[109]
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 12
sub.i.v
pop.i.v [stacktop]self.headrot

:[111]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 12
add.i.v
pop.i.v [stacktop]self.headrot

:[113]
pushi.e 0
pop.v.i self.dontdraw
pushi.e 0
pop.v.i self.image_angle
push.v self.timer
pushi.e 125
cmp.i.v GTE
bf [115]

:[114]
pushi.e 1
pop.v.i self.col

:[115]
pushi.e 2489
pop.v.i self.sprite_index
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y

:[116]
push.v self.timer
pushi.e 125
cmp.i.v EQ
bf [118]

:[117]
push.v self.twinkle
pushi.e 1
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
pushi.e 6
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 200
pop.v.i self.timer
pushi.e 5
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.friction
pushi.e 2491
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.i

:[121]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [123]

:[122]
pushi.e 590
conv.i.v
push.v self.y
pushi.e 120
add.i.v
push.v self.i
pushi.e 35
mul.i.v
add.v.v
push.v self.x
call.i instance_create(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [121]

:[123]
push.v self.timer
pushi.e 127
cmp.i.v GTE
bf [125]

:[124]
push.v self.timer
pushi.e 130
cmp.i.v LT
b [126]

:[125]
push.e 0

:[126]
bf [131]

:[127]
pushi.e 0
pop.v.i self.col
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [129]

:[128]
push.v self.image_angle
pushi.e 30
add.i.v
pop.v.v self.image_angle

:[129]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.v self.image_angle
pushi.e 30
sub.i.v
pop.v.v self.image_angle

:[131]
push.v self.timer
pushi.e 130
cmp.i.v EQ
bf [133]

:[132]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 2
div.i.v
pop.i.v [stacktop]self.headrot
push.v self.king
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.image_angle
pushi.e 2500
pop.v.i self.sprite_index

:[133]
push.v self.timer
pushi.e 131
cmp.i.v EQ
bf [135]

:[134]
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.headrot
pushi.e 2
div.i.v
pop.i.v [stacktop]self.headrot
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.image_angle
pushi.e 2497
pop.v.i self.sprite_index

:[135]
push.v self.timer
pushi.e 200
cmp.i.v GT
bf [137]

:[136]
push.v self.twinkle
pushi.e 1
cmp.i.v EQ
b [138]

:[137]
push.e 0

:[138]
bf [143]

:[139]
push.v self.timer
pushi.e 201
cmp.i.v GT
bf [141]

:[140]
pushi.e 0
pop.v.i self.col

:[141]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [143]

:[142]
call.i instance_destroy(argc=0)
popz.v

:[143]
push.v self.smear
pushi.e 0
cmp.i.v GT
bf [149]

:[144]
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [146]

:[145]
push.v self.smear
pushi.e 5
conv.i.d
div.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 2.5
conv.d.v
push.v self.image_xscale
push.v self.y
pushi.e 168
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
push.v self.image_index
pushi.e 2492
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[146]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
push.v self.smear
pushi.e 5
conv.i.d
div.d.v
push.v self.image_blend
pushi.e 0
conv.i.v
push.d 2.5
conv.d.v
push.v self.image_xscale
push.v self.y
pushi.e 168
sub.i.v
push.v self.x
pushi.e 40
add.i.v
push.v self.image_index
pushi.e 2492
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[148]
push.v self.smear
pushi.e 1
sub.i.v
pop.v.v self.smear

:[149]
push.v self.blazing
pushi.e 1
cmp.i.v EQ
bf [155]

:[150]
push.v self.bl_o
pushi.e 0
cmp.i.v EQ
bf [152]

:[151]
pushi.e 1
pop.v.i self.bl_o
b [153]

:[152]
pushi.e 0
pop.v.i self.bl_o

:[153]
push.v self.bl_o
pushi.e 1
cmp.i.v EQ
bf [155]

:[154]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
pushi.e 2
conv.i.v
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2498
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[155]
push.v self.col
pushi.e 1
cmp.i.v EQ
bf [end]

:[156]
push.v self.flip
pushi.e 0
cmp.i.v EQ
bf [159]

:[157]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 260
add.i.v
push.v self.x
pushi.e 80
add.i.v
push.v self.y
push.v self.x
pushi.e 3
sub.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [159]

:[158]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[159]
push.v self.flip
pushi.e 1
cmp.i.v EQ
bf [end]

:[160]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 260
add.i.v
push.v self.x
pushi.e 80
sub.i.v
push.v self.y
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[161]
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]