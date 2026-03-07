.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.movement
b [4]

:[2]
push.v self.movement
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.movement

:[4]
push.v global.invc
pushi.e 1
sub.i.v
pop.v.v global.invc
pushglb.v global.invc
pushi.e 0
cmp.i.v GT
bt [6]

:[5]
push.v 155.runaway
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.d 0.5
pop.v.d self.image_speed
b [10]

:[9]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[10]
push.v self.charge
pushi.e 1
sub.i.v
pop.v.v self.charge
push.v self.shot
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [13]

:[12]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [20]

:[15]
pushi.e 740
conv.i.v
call.i instance_number(argc=1)
pushi.e 0
cmp.i.v EQ
bt [17]

:[16]
push.v self.charge
pushi.e 0
cmp.i.v LT
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 14
pop.v.i self.charge
pushi.e 740
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 117
conv.i.v
call.i snd_play(argc=1)
popz.v

:[20]
push.v self.sprite_index
pushi.e 47
cmp.i.v EQ
bf [22]

:[21]
push.v self.image_angle
pushi.e 6
add.i.v
pop.v.v self.image_angle

:[22]
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [34]

:[26]
push.v self.x
push.v 759.x
pushi.e 8
add.i.v
cmp.v.v LT
bf [28]

:[27]
push.v 759.x
pushi.e 8
add.i.v
pop.v.v self.x

:[28]
push.v self.y
push.v 760.x
pushi.e 8
add.i.v
cmp.v.v LT
bf [30]

:[29]
push.v 760.x
pushi.e 8
add.i.v
pop.v.v self.y

:[30]
push.v self.x
push.v 761.x
pushi.e 8
sub.i.v
cmp.v.v GT
bf [32]

:[31]
push.v 761.x
pushi.e 8
sub.i.v
pop.v.v self.x

:[32]
push.v self.y
push.v 762.y
pushi.e 8
sub.i.v
cmp.v.v GT
bf [34]

:[33]
push.v 762.y
pushi.e 8
sub.i.v
pop.v.v self.y

:[34]
push.v self.movement
pushi.e 11
cmp.i.v EQ
bf [45]

:[35]
pushi.e 0
pop.v.i self.vspeed
push.v 1575.up
conv.v.b
bf [37]

:[36]
push.v self.y
pushglb.v global.sp
sub.v.v
pop.v.v self.y

:[37]
push.v 1575.down
conv.v.b
bf [39]

:[38]
push.v self.y
pushglb.v global.sp
add.v.v
pop.v.v self.y

:[39]
push.v 1575.left
conv.v.b
bf [45]

:[40]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 2
pop.v.i self.jumpstage
pushi.e -6
pop.v.i self.hspeed

:[45]
push.v self.movement
pushi.e 12
cmp.i.v EQ
bf [56]

:[46]
pushi.e 0
pop.v.i self.hspeed
push.v 1575.left
conv.v.b
bf [48]

:[47]
push.v self.x
pushglb.v global.sp
sub.v.v
pop.v.v self.x

:[48]
push.v 1575.right
conv.v.b
bf [50]

:[49]
push.v self.x
pushglb.v global.sp
add.v.v
pop.v.v self.x

:[50]
push.v 1575.down
conv.v.b
bf [56]

:[51]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 2
pop.v.i self.jumpstage
pushi.e 6
pop.v.i self.vspeed

:[56]
push.v self.movement
pushi.e 13
cmp.i.v EQ
bf [67]

:[57]
pushi.e 0
pop.v.i self.vspeed
push.v 1575.up
conv.v.b
bf [59]

:[58]
push.v self.y
pushglb.v global.sp
sub.v.v
pop.v.v self.y

:[59]
push.v 1575.down
conv.v.b
bf [61]

:[60]
push.v self.y
pushglb.v global.sp
add.v.v
pop.v.v self.y

:[61]
push.v 1575.right
conv.v.b
bf [67]

:[62]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
pushi.e 2
pop.v.i self.jumpstage
pushi.e 6
pop.v.i self.hspeed

:[67]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
push.v self.movement
pushi.e 2
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [100]

:[71]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [77]

:[72]
pushi.e 38
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
push.v self.vspeed
pushi.e -1
cmp.i.v LTE
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e -1
pop.v.i self.vspeed

:[77]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [83]

:[78]
push.v 1575.up
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.v self.vspeed
pushi.e -1
cmp.i.v LTE
b [81]

:[80]
push.e 0

:[81]
bf [83]

:[82]
pushi.e -1
pop.v.i self.vspeed

:[83]
push.v self.vspeed
push.d 0.5
cmp.d.v GT
bf [85]

:[84]
push.v self.vspeed
pushi.e 8
cmp.i.v LT
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.v self.vspeed
push.d 0.6
add.d.v
pop.v.v self.vspeed

:[88]
push.v self.vspeed
pushi.e -1
cmp.i.v GT
bf [90]

:[89]
push.v self.vspeed
push.d 0.5
cmp.d.v LTE
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
push.v self.vspeed
push.d 0.2
add.d.v
pop.v.v self.vspeed

:[93]
push.v self.vspeed
pushi.e -4
cmp.i.v GT
bf [95]

:[94]
push.v self.vspeed
pushi.e -1
cmp.i.v LTE
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.vspeed
push.d 0.5
add.d.v
pop.v.v self.vspeed

:[98]
push.v self.vspeed
pushi.e -4
cmp.i.v LTE
bf [100]

:[99]
push.v self.vspeed
push.d 0.2
add.d.v
pop.v.v self.vspeed

:[100]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [102]

:[101]
push.v self.movement
pushi.e 11
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
bf [133]

:[104]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [110]

:[105]
pushi.e 37
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
push.v self.hspeed
pushi.e -1
cmp.i.v LTE
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
pushi.e -1
pop.v.i self.hspeed

:[110]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [116]

:[111]
push.v 1575.left
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
push.v self.hspeed
pushi.e -1
cmp.i.v LTE
b [114]

:[113]
push.e 0

:[114]
bf [116]

:[115]
pushi.e -1
pop.v.i self.hspeed

:[116]
push.v self.hspeed
push.d 0.5
cmp.d.v GT
bf [118]

:[117]
push.v self.hspeed
pushi.e 8
cmp.i.v LT
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
push.v self.hspeed
push.d 0.6
add.d.v
pop.v.v self.hspeed

:[121]
push.v self.hspeed
pushi.e -1
cmp.i.v GT
bf [123]

:[122]
push.v self.hspeed
push.d 0.5
cmp.d.v LTE
b [124]

:[123]
push.e 0

:[124]
bf [126]

:[125]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed

:[126]
push.v self.hspeed
pushi.e -4
cmp.i.v GT
bf [128]

:[127]
push.v self.hspeed
pushi.e -1
cmp.i.v LTE
b [129]

:[128]
push.e 0

:[129]
bf [131]

:[130]
push.v self.hspeed
push.d 0.5
add.d.v
pop.v.v self.hspeed

:[131]
push.v self.hspeed
pushi.e -4
cmp.i.v LTE
bf [133]

:[132]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed

:[133]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [135]

:[134]
push.v self.movement
pushi.e 12
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [166]

:[137]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [143]

:[138]
pushi.e 40
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
push.v self.vspeed
pushi.e 1
cmp.i.v GTE
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushi.e 1
pop.v.i self.vspeed

:[143]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [149]

:[144]
push.v 1575.down
pushi.e 0
cmp.i.v EQ
bf [146]

:[145]
push.v self.vspeed
pushi.e 1
cmp.i.v GTE
b [147]

:[146]
push.e 0

:[147]
bf [149]

:[148]
pushi.e 1
pop.v.i self.vspeed

:[149]
push.v self.vspeed
push.d -0.5
cmp.d.v LT
bf [151]

:[150]
push.v self.vspeed
pushi.e -8
cmp.i.v GT
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
push.v self.vspeed
push.d 0.6
sub.d.v
pop.v.v self.vspeed

:[154]
push.v self.vspeed
pushi.e 1
cmp.i.v LT
bf [156]

:[155]
push.v self.vspeed
push.d -0.5
cmp.d.v GTE
b [157]

:[156]
push.e 0

:[157]
bf [159]

:[158]
push.v self.vspeed
push.d 0.2
sub.d.v
pop.v.v self.vspeed

:[159]
push.v self.vspeed
pushi.e 4
cmp.i.v LT
bf [161]

:[160]
push.v self.vspeed
pushi.e 1
cmp.i.v GTE
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
push.v self.vspeed
push.d 0.5
sub.d.v
pop.v.v self.vspeed

:[164]
push.v self.vspeed
pushi.e 4
cmp.i.v GTE
bf [166]

:[165]
push.v self.vspeed
push.d 0.2
sub.d.v
pop.v.v self.vspeed

:[166]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [168]

:[167]
push.v self.movement
pushi.e 13
cmp.i.v EQ
b [169]

:[168]
push.e 0

:[169]
bf [199]

:[170]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [176]

:[171]
pushi.e 39
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [173]

:[172]
push.v self.hspeed
pushi.e 1
cmp.i.v GTE
b [174]

:[173]
push.e 0

:[174]
bf [176]

:[175]
pushi.e 1
pop.v.i self.hspeed

:[176]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [182]

:[177]
push.v 1575.right
pushi.e 0
cmp.i.v EQ
bf [179]

:[178]
push.v self.hspeed
pushi.e 1
cmp.i.v GTE
b [180]

:[179]
push.e 0

:[180]
bf [182]

:[181]
pushi.e 1
pop.v.i self.hspeed

:[182]
push.v self.hspeed
push.d -0.5
cmp.d.v LT
bf [184]

:[183]
push.v self.hspeed
pushi.e -8
cmp.i.v GT
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
push.v self.hspeed
push.d 0.6
sub.d.v
pop.v.v self.hspeed

:[187]
push.v self.hspeed
pushi.e 1
cmp.i.v LT
bf [189]

:[188]
push.v self.hspeed
push.d -0.5
cmp.d.v GTE
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed

:[192]
push.v self.hspeed
pushi.e 4
cmp.i.v LT
bf [194]

:[193]
push.v self.hspeed
pushi.e 1
cmp.i.v GTE
b [195]

:[194]
push.e 0

:[195]
bf [197]

:[196]
push.v self.hspeed
push.d 0.5
sub.d.v
pop.v.v self.hspeed

:[197]
push.v self.hspeed
pushi.e 4
cmp.i.v GTE
bf [199]

:[198]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed

:[199]
push.v self.ignore_border
pushi.e 0
cmp.i.v EQ
bf [202]

:[200]
pushi.e 518
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [202]

:[201]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
b [203]

:[202]
push.e 0

:[203]
bf [224]

:[204]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [209]

:[205]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [207]

:[206]
pushi.e 0
pop.v.i self.hspeed

:[207]
push.v self.movement
pushi.e 13
cmp.i.v EQ
bf [209]

:[208]
pushi.e 1
pop.v.i self.jumpstage

:[209]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [214]

:[210]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
pop.v.v self.y
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.vspeed
pushi.e 0
cmp.i.v LT
bf [212]

:[211]
pushi.e 0
pop.v.i self.vspeed

:[212]
push.v self.movement
pushi.e 12
cmp.i.v EQ
bf [214]

:[213]
pushi.e 1
pop.v.i self.jumpstage

:[214]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v GT
bf [219]

:[215]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v self.x
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [217]

:[216]
pushi.e 0
pop.v.i self.hspeed

:[217]
push.v self.movement
pushi.e 11
cmp.i.v EQ
bf [219]

:[218]
pushi.e 1
pop.v.i self.jumpstage

:[219]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v GT
bf [224]

:[220]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v self.y
pushi.e 7
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [222]

:[221]
pushi.e 0
pop.v.i self.vspeed

:[222]
push.v self.movement
pushi.e 2
cmp.i.v EQ
bf [224]

:[223]
pushi.e 1
pop.v.i self.jumpstage

:[224]
pushi.e 155
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[225]
push.v 155.runaway
pushi.e 1
cmp.i.v EQ
bf [227]

:[226]
push.v self.x
pushi.e -20
cmp.i.v LT
b [228]

:[227]
push.e 0

:[228]
bf [end]

:[229]
pushi.e 150
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [231]

:[230]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[231]
push.v self.x
pushi.e -60
cmp.i.v LT
bf [end]

:[232]
pushi.e -5
pushi.e 15
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [234]

:[233]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v

:[234]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]