.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
push.v self.STOPPER
pushi.e 0
cmp.i.v EQ
bf [121]

:[1]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
call.i scr_depth(argc=0)
popz.v

:[3]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [12]

:[4]
pushi.e 0
pop.v.i self.myinteract
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[6]
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [12]

:[7]
push.d 0.2
pop.v.d self.image_speed
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bt [9]

:[8]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v

:[12]
push.v self.fun
pushi.e 3
cmp.i.v EQ
bf [18]

:[13]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bt [15]

:[14]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v

:[18]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.con
push.v self.new
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1339
conv.i.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.blc
pushi.e 0
pop.v.i self.new
pushi.e 3
pop.v.i self.con

:[21]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1339
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.blc
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 25
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[23]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [25]

:[24]
pushbltn.v self.room
pushi.e 137
cmp.i.v NEQ
b [26]

:[25]
push.e 0

:[26]
bf [39]

:[27]
push.v self.blc
conv.v.i
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e 5
pop.v.i self.spd
pushi.e -5
pushi.e 99
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
bf [31]

:[30]
pushi.e 4
pop.v.i self.spd

:[31]
push.v self.spd
push.v 1576.y
pushi.e 20
sub.i.v
push.v 1576.x
pushi.e 4
sub.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.vspeed
call.i abs(argc=1)
push.v self.hspeed
call.i abs(argc=1)
cmp.v.v GT
bf [36]

:[32]
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
push.v self.usprite
pop.v.v self.sprite_index
b [35]

:[34]
push.v self.dsprite
pop.v.v self.sprite_index

:[35]
b [39]

:[36]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [38]

:[37]
push.v self.lsprite
pop.v.v self.sprite_index
b [39]

:[38]
push.v self.rsprite
pop.v.v self.sprite_index

:[39]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushbltn.v self.room
pushi.e 137
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [55]

:[43]
push.v self.blc
conv.v.i
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]
push.v 1576.x
push.v self.x
pushi.e 20
add.i.v
cmp.v.v GT
bf [47]

:[46]
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
push.v self.rsprite
pop.v.v self.sprite_index

:[47]
push.v 1576.x
push.v self.x
pushi.e 20
add.i.v
cmp.v.v LTE
bf [49]

:[48]
pushi.e -3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
push.v self.lsprite
pop.v.v self.sprite_index

:[49]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [52]

:[50]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [52]

:[51]
push.v self.sans
pushi.e 0
cmp.i.v EQ
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushi.e 8
pop.v.i self.con
pushi.e 1
pop.v.i self.sans

:[55]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [61]

:[59]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 2
sub.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 6
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 20
sub.i.v
push.v self.x
pushi.e 6
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [61]

:[60]
pushi.e 0
pop.v.i self.speed
pushi.e 5
pop.v.i self.con

:[61]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [64]

:[62]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
pushbltn.v self.room
pushi.e 137
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [68]

:[66]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 80
sub.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 6
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 60
add.i.v
push.v self.x
pushi.e 6
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [68]

:[67]
pushi.e 0
pop.v.i self.speed
pushi.e 5
pop.v.i self.con

:[68]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [70]

:[69]
pushi.e -1
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i global.interact
pushi.e 6
pop.v.i self.con
pushi.e 12
pop.v.i global.border
pushi.e 47
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.talkedto

:[70]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [72]

:[71]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [96]

:[74]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.con
pushbltn.v self.room
pushi.e 134
cmp.i.v EQ
bf [79]

:[75]
push.v 1576.y
pushi.e 600
cmp.i.v GT
bf [77]

:[76]
pushi.e 500
pop.v.i self.y
b [78]

:[77]
pushi.e 640
pop.v.i self.y

:[78]
pushi.e 160
pop.v.i self.x

:[79]
pushbltn.v self.room
pushi.e 135
cmp.i.v EQ
bf [84]

:[80]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.v 1576.y
pushi.e 130
add.i.v
pop.v.v self.y

:[82]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
push.v 1576.y
pushi.e 100
sub.i.v
pop.v.v self.y

:[84]
pushbltn.v self.room
pushi.e 136
cmp.i.v EQ
bf [89]

:[85]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.v 1576.x
pushi.e 100
sub.i.v
pop.v.v self.x

:[87]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [89]

:[88]
push.v 1576.x
pushi.e 100
add.i.v
pop.v.v self.x

:[89]
pushbltn.v self.room
pushi.e 137
cmp.i.v EQ
bf [94]

:[90]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.v 1576.x
pushi.e 60
sub.i.v
pop.v.v self.x

:[92]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [94]

:[93]
push.v 1576.x
pushi.e 60
add.i.v
pop.v.v self.x

:[94]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 0
pop.v.i global.mercy
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 122
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[96]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [98]

:[97]
pushi.e 0
pop.v.i self.hspeed
pushi.e 9
pop.v.i self.con
pushi.e 15
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[98]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [100]

:[99]
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 11
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[100]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [102]

:[101]
pushi.e 1520
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 13
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[102]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [104]

:[103]
pushi.e 1
pop.v.i self.sans
pushi.e 4
pop.v.i self.con
pushi.e 1
pop.v.i self.active

:[104]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [107]

:[105]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 60
cmp.i.v LT
bf [107]

:[106]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.active
pushi.e 21
pop.v.i self.con

:[107]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
push.v self.con
pushi.e 21
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 1
pop.v.i self.active
pushi.e 4
pop.v.i self.con

:[112]
push.v self.active
pushi.e 4
cmp.i.v EQ
bf [116]

:[113]
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rememberx
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remembery
pushi.e 60
pop.v.i self.i

:[114]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.rememberx
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.rememberx
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remembery
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remembery
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [114]

:[116]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.v self.STOPPER
pushi.e 0
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
pushi.e 0
pop.v.i global.mercy
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
call.i audio_stop_all(argc=0)
popz.v
pushi.e 122
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i self.STOPPER
pushi.e 0
pop.v.i self.visible
pushi.e 40
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[121]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [end]

:[122]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
call.i audio_stop_all(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]