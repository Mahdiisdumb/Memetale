.localvar 0 arguments

:[0]
push.v self.ks
pushi.e 1
add.i.v
pop.v.v self.ks
push.v self.king
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.ks
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.5
mul.d.v
add.v.v
pop.i.v [stacktop]self.y
push.v self.y
push.v self.tyspeed
add.v.v
pop.v.v self.y
push.v self.x
push.v self.txspeed
add.v.v
pop.v.v self.x
push.v self.txspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.txspeed
push.d 0.5
mul.d.v
pop.v.v self.txspeed

:[2]
push.v self.txspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.txspeed

:[4]
push.v self.tyspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.tyspeed
push.d 0.5
mul.d.v
pop.v.v self.tyspeed

:[6]
push.v self.tyspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.tyspeed

:[8]
push.v self.x
push.v self.thisx
cmp.v.v LT
bf [10]

:[9]
push.v self.x
push.v self.thisx
push.v self.x
sub.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[10]
push.v self.y
push.v self.thisy
cmp.v.v LT
bf [12]

:[11]
push.v self.y
push.v self.thisy
push.v self.y
sub.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[12]
push.v self.x
push.v self.thisx
cmp.v.v GT
bf [14]

:[13]
push.v self.x
push.v self.thisx
push.v self.x
sub.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[14]
push.v self.y
push.v self.thisy
cmp.v.v GT
bf [16]

:[15]
push.v self.y
push.v self.thisy
push.v self.y
sub.v.v
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[16]
push.v self.x
push.v self.thisx
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [18]

:[17]
push.v self.thisx
pop.v.v self.x

:[18]
push.v self.x
push.v self.thisy
sub.v.v
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [20]

:[19]
push.v self.thisy
pop.v.v self.y

:[20]
push.v self.bb
pushi.e 99
cmp.i.v EQ
bf [26]

:[21]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.y
push.v self.thisy
cmp.v.v GTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.v self.thisy
pop.v.v self.y
push.v self.thisx
pop.v.v self.x
pushi.e 0
pop.v.i self.bb
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[26]
push.v self.unhinge
pushi.e 0
cmp.i.v EQ
bf [32]

:[27]
push.v self.image_index
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.v self.vspeed
pushi.e -2
cmp.i.v GT
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.v self.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[32]
push.v self.home
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.image_angle

:[34]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [38]

:[35]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [37]

:[36]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
b [38]

:[37]
pushi.e 1
pop.v.i self.con

:[38]
push.v self.h_mode
pushi.e 0
cmp.i.v EQ
bf [83]

:[39]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [83]

:[40]
push.v self.ctimer
push.d 0.5
add.d.v
pop.v.v self.ctimer
push.v self.ctimer
push.d 27.5
cmp.d.v GTE
bf [42]

:[41]
push.v self.ctimer
push.d 0.5
add.d.v
pop.v.v self.ctimer

:[42]
push.v self.ctimer
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 20
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 6
pop.v.i self.maxfire
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[44]
push.v self.ctimer
pushi.e 28
cmp.i.v EQ
bf [46]

:[45]
pushi.e 10
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 6
pop.v.i self.maxfire
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[46]
push.v self.ctimer
pushi.e 54
cmp.i.v EQ
bf [48]

:[47]
pushi.e 8
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 5
pop.v.i self.maxfire
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[48]
push.v self.ctimer
pushi.e 78
cmp.i.v EQ
bf [50]

:[49]
pushi.e 8
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 5
pop.v.i self.maxfire
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[50]
push.v self.ctimer
pushi.e 100
cmp.i.v EQ
bf [52]

:[51]
pushi.e 8
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[52]
push.v self.ctimer
pushi.e 122
cmp.i.v EQ
bf [54]

:[53]
pushi.e 8
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[54]
push.v self.ctimer
pushi.e 140
cmp.i.v EQ
bf [56]

:[55]
pushi.e 6
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[56]
push.v self.ctimer
pushi.e 156
cmp.i.v EQ
bf [58]

:[57]
pushi.e 6
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[58]
push.v self.ctimer
pushi.e 170
cmp.i.v EQ
bf [60]

:[59]
pushi.e 6
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 8
pop.v.i self.maxfire
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[60]
push.v self.ctimer
pushi.e 190
cmp.i.v EQ
bf [62]

:[61]
push.d 0.55
conv.d.v
pushi.e 1
conv.i.v
push.v self.sfx_p
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.meter

:[62]
push.v self.ctimer
pushi.e 205
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
pop.v.i self.home
pushi.e 45
pop.v.i self.aaspeed

:[64]
push.v self.ctimer
pushi.e 205
cmp.i.v GTE
bf [66]

:[65]
push.v self.ctimer
pushi.e 255
cmp.i.v LT
b [67]

:[66]
push.e 0

:[67]
bf [71]

:[68]
push.v self.image_angle
push.v self.aaspeed
add.v.v
pop.v.v self.image_angle
push.v self.aaspeed
pushi.e 0
cmp.i.v GT
bf [70]

:[69]
push.v self.aaspeed
pushi.e 3
sub.i.v
pop.v.v self.aaspeed
b [71]

:[70]
pushi.e 0
pop.v.i self.aaspeed
pushi.e 255
pop.v.i self.ctimer

:[71]
push.v self.ctimer
pushi.e 255
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i self.home

:[73]
push.v self.ctimer
pushi.e 257
cmp.i.v EQ
bf [75]

:[74]
pushi.e 2481
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.unhinge
pushi.e 0
pop.v.i self.home

:[75]
push.v self.ctimer
pushi.e 275
cmp.i.v EQ
bf [77]

:[76]
pushi.e 7
pop.v.i self.metercounter
push.d 1.1
conv.d.v
pushi.e 1
conv.i.v
push.v self.sfx_l
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.blast
pushi.e 70
pop.v.i self.bt
pushi.e 0
pop.v.i self.btimer

:[77]
push.v self.ctimer
pushi.e 315
cmp.i.v GTE
bf [83]

:[78]
push.v self.king
conv.v.i
pushenv [81]

:[79]
push.v self.guncon
pushi.e 5
cmp.i.v EQ
bf [81]

:[80]
pushi.e 7
pop.v.i self.guncon

:[81]
popenv [79]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
push.v self.h_mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[84]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[85]
push.v self.ctimer
push.d 0.5
add.d.v
pop.v.v self.ctimer
push.v self.ctimer
push.d 19.5
cmp.d.v GTE
bf [87]

:[86]
push.v self.ctimer
push.d 0.5
add.d.v
pop.v.v self.ctimer

:[87]
push.v self.ctimer
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 20
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 6
pop.v.i self.maxfire
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[89]
push.v self.ctimer
pushi.e 25
cmp.i.v EQ
bf [91]

:[90]
pushi.e 10
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.type
pushi.e 0
pop.v.i self.fire
pushi.e 6
pop.v.i self.maxfire
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[91]
push.v self.ctimer
pushi.e 50
cmp.i.v EQ
bf [93]

:[92]
pushi.e 8
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.type
pushi.e 0
pop.v.i self.fire
pushi.e 5
pop.v.i self.maxfire
pushi.e 8
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[93]
push.v self.ctimer
pushi.e 75
cmp.i.v EQ
bf [95]

:[94]
pushi.e 7
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 7
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[95]
push.v self.ctimer
pushi.e 95
cmp.i.v EQ
bf [97]

:[96]
pushi.e 7
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 7
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[97]
push.v self.ctimer
pushi.e 115
cmp.i.v EQ
bf [99]

:[98]
pushi.e 7
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 7
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[99]
push.v self.ctimer
pushi.e 132
cmp.i.v EQ
bf [101]

:[100]
pushi.e 6
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[101]
push.v self.ctimer
pushi.e 156
cmp.i.v EQ
bf [103]

:[102]
pushi.e 6
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 4
pop.v.i self.maxfire
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[103]
push.v self.ctimer
pushi.e 170
cmp.i.v EQ
bf [105]

:[104]
pushi.e 6
pop.v.i self.l_timer
pushi.e 1
pop.v.i self.home
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.fire
pushi.e 10
pop.v.i self.maxfire
pushi.e 6
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[105]
push.v self.ctimer
pushi.e 200
cmp.i.v EQ
bf [107]

:[106]
push.d 0.55
conv.d.v
pushi.e 1
conv.i.v
push.v self.sfx_p
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.meter

:[107]
push.v self.ctimer
pushi.e 215
cmp.i.v EQ
bf [109]

:[108]
pushi.e 0
pop.v.i self.home
pushi.e 90
pop.v.i self.aaspeed

:[109]
push.v self.ctimer
pushi.e 215
cmp.i.v GTE
bf [111]

:[110]
push.v self.ctimer
pushi.e 240
cmp.i.v LT
b [112]

:[111]
push.e 0

:[112]
bf [116]

:[113]
push.v self.image_angle
push.v self.aaspeed
add.v.v
pop.v.v self.image_angle
push.v self.aaspeed
pushi.e 0
cmp.i.v GT
bf [115]

:[114]
push.v self.aaspeed
pushi.e 6
sub.i.v
pop.v.v self.aaspeed
b [116]

:[115]
pushi.e 0
pop.v.i self.aaspeed
pushi.e 255
pop.v.i self.ctimer

:[116]
push.v self.ctimer
pushi.e 255
cmp.i.v EQ
bf [118]

:[117]
pushi.e 1
pop.v.i self.home

:[118]
push.v self.ctimer
pushi.e 257
cmp.i.v EQ
bf [120]

:[119]
pushi.e 2481
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.unhinge
pushi.e 0
pop.v.i self.home

:[120]
push.v self.ctimer
pushi.e 270
cmp.i.v EQ
bf [122]

:[121]
pushi.e 7
pop.v.i self.metercounter
push.d 1.1
conv.d.v
pushi.e 1
conv.i.v
push.v self.sfx_l
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.blast
pushi.e 70
pop.v.i self.bt
pushi.e 0
pop.v.i self.btimer

:[122]
push.v self.ctimer
pushi.e 272
cmp.i.v EQ
bt [129]

:[123]
push.v self.ctimer
pushi.e 274
cmp.i.v EQ
bt [129]

:[124]
push.v self.ctimer
pushi.e 276
cmp.i.v EQ
bt [129]

:[125]
push.v self.ctimer
pushi.e 278
cmp.i.v EQ
bt [129]

:[126]
push.v self.ctimer
pushi.e 280
cmp.i.v EQ
bt [129]

:[127]
push.v self.ctimer
pushi.e 282
cmp.i.v EQ
bt [129]

:[128]
push.v self.ctimer
pushi.e 284
cmp.i.v EQ
b [130]

:[129]
push.e 1

:[130]
bf [134]

:[131]
push.v self.jr
pushi.e 8
add.i.v
pop.v.v self.jr
pushi.e 0
pop.v.i self.i

:[132]
push.v self.i
pushi.e 24
cmp.i.v LT
bf [134]

:[133]
pushi.e 581
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.star
pushi.e 0
push.v self.star
conv.v.i
pop.v.i [stacktop]self.h_mode
push.d -0.1
push.v self.star
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 8
push.v self.star
conv.v.i
pop.v.i [stacktop]self.speed
push.v self.jr
pushi.e 15
push.v self.i
mul.v.i
add.v.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e -9000
push.v self.star
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [132]

:[134]
push.v self.ctimer
pushi.e 310
cmp.i.v GTE
bf [end]

:[135]
push.v self.king
conv.v.i
pushenv [138]

:[136]
push.v self.guncon
pushi.e 5
cmp.i.v EQ
bf [138]

:[137]
pushi.e 7
pop.v.i self.guncon

:[138]
popenv [136]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[139]
call.i instance_destroy(argc=0)
popz.v

:[end]