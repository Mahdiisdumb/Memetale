.localvar 0 arguments

:[0]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v 1575.left
conv.v.b
bf [3]

:[2]
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x

:[3]
push.v 1575.right
conv.v.b
bf [5]

:[4]
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x

:[5]
push.v 1575.down
conv.v.b
bf [7]

:[6]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y

:[7]
push.v 1575.up
conv.v.b
bf [9]

:[8]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[9]
push.v self.movement
pushi.e 2
cmp.i.v EQ
bf [20]

:[10]
pushi.e 0
pop.v.i self.hspeed
push.v 1575.left
conv.v.b
bf [12]

:[11]
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x

:[12]
push.v 1575.right
conv.v.b
bf [14]

:[13]
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x

:[14]
push.v 1575.up
conv.v.b
bf [20]

:[15]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 2
pop.v.i self.jumpstage
pushi.e -6
pop.v.i self.vspeed

:[20]
push.v self.movement
pushi.e 11
cmp.i.v EQ
bf [31]

:[21]
pushi.e 0
pop.v.i self.vspeed
push.v 1575.up
conv.v.b
bf [23]

:[22]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[23]
push.v 1575.down
conv.v.b
bf [25]

:[24]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y

:[25]
push.v 1575.left
conv.v.b
bf [31]

:[26]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 2
pop.v.i self.jumpstage
pushi.e -6
pop.v.i self.hspeed

:[31]
push.v self.movement
pushi.e 12
cmp.i.v EQ
bf [42]

:[32]
pushi.e 0
pop.v.i self.hspeed
push.v 1575.left
conv.v.b
bf [34]

:[33]
push.v self.x
pushi.e 5
sub.i.v
pop.v.v self.x

:[34]
push.v 1575.right
conv.v.b
bf [36]

:[35]
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x

:[36]
push.v 1575.down
conv.v.b
bf [42]

:[37]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.v self.vspeed
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 2
pop.v.i self.jumpstage
pushi.e 6
pop.v.i self.vspeed

:[42]
push.v self.movement
pushi.e 13
cmp.i.v EQ
bf [53]

:[43]
pushi.e 0
pop.v.i self.vspeed
push.v 1575.up
conv.v.b
bf [45]

:[44]
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y

:[45]
push.v 1575.down
conv.v.b
bf [47]

:[46]
push.v self.y
pushi.e 5
add.i.v
pop.v.v self.y

:[47]
push.v 1575.right
conv.v.b
bf [53]

:[48]
push.v self.jumpstage
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.hspeed
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 2
pop.v.i self.jumpstage
pushi.e 6
pop.v.i self.hspeed

:[53]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
push.v self.movement
pushi.e 2
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [86]

:[57]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [63]

:[58]
pushi.e 38
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
push.v self.vspeed
pushi.e -1
cmp.i.v LTE
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e -1
pop.v.i self.vspeed

:[63]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [69]

:[64]
push.v 1575.up
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.v self.vspeed
pushi.e -1
cmp.i.v LTE
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e -1
pop.v.i self.vspeed

:[69]
push.v self.vspeed
push.d 0.5
cmp.d.v GT
bf [71]

:[70]
push.v self.vspeed
pushi.e 8
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
push.v self.vspeed
push.d 0.6
add.d.v
pop.v.v self.vspeed

:[74]
push.v self.vspeed
pushi.e -1
cmp.i.v GT
bf [76]

:[75]
push.v self.vspeed
push.d 0.5
cmp.d.v LTE
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.v self.vspeed
push.d 0.2
add.d.v
pop.v.v self.vspeed

:[79]
push.v self.vspeed
pushi.e -4
cmp.i.v GT
bf [81]

:[80]
push.v self.vspeed
pushi.e -1
cmp.i.v LTE
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.v self.vspeed
push.d 0.5
add.d.v
pop.v.v self.vspeed

:[84]
push.v self.vspeed
pushi.e -4
cmp.i.v LTE
bf [86]

:[85]
push.v self.vspeed
push.d 0.2
add.d.v
pop.v.v self.vspeed

:[86]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
push.v self.movement
pushi.e 11
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [119]

:[90]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [96]

:[91]
pushi.e 37
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.v self.hspeed
pushi.e -1
cmp.i.v LTE
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e -1
pop.v.i self.hspeed

:[96]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [102]

:[97]
push.v 1575.left
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.v self.hspeed
pushi.e -1
cmp.i.v LTE
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e -1
pop.v.i self.hspeed

:[102]
push.v self.hspeed
push.d 0.5
cmp.d.v GT
bf [104]

:[103]
push.v self.hspeed
pushi.e 8
cmp.i.v LT
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.v self.hspeed
push.d 0.6
add.d.v
pop.v.v self.hspeed

:[107]
push.v self.hspeed
pushi.e -1
cmp.i.v GT
bf [109]

:[108]
push.v self.hspeed
push.d 0.5
cmp.d.v LTE
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed

:[112]
push.v self.hspeed
pushi.e -4
cmp.i.v GT
bf [114]

:[113]
push.v self.hspeed
pushi.e -1
cmp.i.v LTE
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
push.v self.hspeed
push.d 0.5
add.d.v
pop.v.v self.hspeed

:[117]
push.v self.hspeed
pushi.e -4
cmp.i.v LTE
bf [119]

:[118]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed

:[119]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [121]

:[120]
push.v self.movement
pushi.e 12
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [152]

:[123]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [129]

:[124]
pushi.e 40
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.v self.vspeed
pushi.e 1
cmp.i.v GTE
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 1
pop.v.i self.vspeed

:[129]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [135]

:[130]
push.v 1575.down
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.v self.vspeed
pushi.e 1
cmp.i.v GTE
b [133]

:[132]
push.e 0

:[133]
bf [135]

:[134]
pushi.e 1
pop.v.i self.vspeed

:[135]
push.v self.vspeed
push.d -0.5
cmp.d.v LT
bf [137]

:[136]
push.v self.vspeed
pushi.e -8
cmp.i.v GT
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
push.v self.vspeed
push.d 0.6
sub.d.v
pop.v.v self.vspeed

:[140]
push.v self.vspeed
pushi.e 1
cmp.i.v LT
bf [142]

:[141]
push.v self.vspeed
push.d -0.5
cmp.d.v GTE
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
push.v self.vspeed
push.d 0.2
sub.d.v
pop.v.v self.vspeed

:[145]
push.v self.vspeed
pushi.e 4
cmp.i.v LT
bf [147]

:[146]
push.v self.vspeed
pushi.e 1
cmp.i.v GTE
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
push.v self.vspeed
push.d 0.5
sub.d.v
pop.v.v self.vspeed

:[150]
push.v self.vspeed
pushi.e 4
cmp.i.v GTE
bf [152]

:[151]
push.v self.vspeed
push.d 0.2
sub.d.v
pop.v.v self.vspeed

:[152]
push.v self.jumpstage
pushi.e 2
cmp.i.v EQ
bf [154]

:[153]
push.v self.movement
pushi.e 13
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [185]

:[156]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [162]

:[157]
pushi.e 39
conv.i.v
call.i keyboard_check_direct(argc=1)
pushi.e 0
cmp.i.v EQ
bf [159]

:[158]
push.v self.hspeed
pushi.e 1
cmp.i.v GTE
b [160]

:[159]
push.e 0

:[160]
bf [162]

:[161]
pushi.e 1
pop.v.i self.hspeed

:[162]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v NEQ
bf [168]

:[163]
push.v 1575.right
pushi.e 0
cmp.i.v EQ
bf [165]

:[164]
push.v self.hspeed
pushi.e 1
cmp.i.v GTE
b [166]

:[165]
push.e 0

:[166]
bf [168]

:[167]
pushi.e 1
pop.v.i self.hspeed

:[168]
push.v self.hspeed
push.d -0.5
cmp.d.v LT
bf [170]

:[169]
push.v self.hspeed
pushi.e -8
cmp.i.v GT
b [171]

:[170]
push.e 0

:[171]
bf [173]

:[172]
push.v self.hspeed
push.d 0.6
sub.d.v
pop.v.v self.hspeed

:[173]
push.v self.hspeed
pushi.e 1
cmp.i.v LT
bf [175]

:[174]
push.v self.hspeed
push.d -0.5
cmp.d.v GTE
b [176]

:[175]
push.e 0

:[176]
bf [178]

:[177]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed

:[178]
push.v self.hspeed
pushi.e 4
cmp.i.v LT
bf [180]

:[179]
push.v self.hspeed
pushi.e 1
cmp.i.v GTE
b [181]

:[180]
push.e 0

:[181]
bf [183]

:[182]
push.v self.hspeed
push.d 0.5
sub.d.v
pop.v.v self.hspeed

:[183]
push.v self.hspeed
pushi.e 4
cmp.i.v GTE
bf [185]

:[184]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed

:[185]
push.v self.movement
pushi.e 20
cmp.i.v NEQ
bf [208]

:[186]
push.v self.ignore_border
pushi.e 0
cmp.i.v EQ
bf [207]

:[187]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [192]

:[188]
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
bf [190]

:[189]
pushi.e 0
pop.v.i self.hspeed

:[190]
push.v self.movement
pushi.e 13
cmp.i.v EQ
bf [192]

:[191]
pushi.e 1
pop.v.i self.jumpstage

:[192]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v LT
bf [197]

:[193]
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
bf [195]

:[194]
pushi.e 0
pop.v.i self.vspeed

:[195]
push.v self.movement
pushi.e 12
cmp.i.v EQ
bf [197]

:[196]
pushi.e 1
pop.v.i self.jumpstage

:[197]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v GT
bf [202]

:[198]
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
bf [200]

:[199]
pushi.e 0
pop.v.i self.hspeed

:[200]
push.v self.movement
pushi.e 11
cmp.i.v EQ
bf [202]

:[201]
pushi.e 1
pop.v.i self.jumpstage

:[202]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v GT
bf [207]

:[203]
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
bf [205]

:[204]
pushi.e 0
pop.v.i self.vspeed

:[205]
push.v self.movement
pushi.e 2
cmp.i.v EQ
bf [207]

:[206]
pushi.e 1
pop.v.i self.jumpstage

:[207]
b [end]

:[208]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [210]

:[209]
push.v self.mv20x
pushi.e 1
add.i.v
pop.v.v self.mv20x

:[210]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [212]

:[211]
push.v self.mv20x
pushi.e 1
sub.i.v
pop.v.v self.mv20x

:[212]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [214]

:[213]
pushi.e 0
pop.v.i self.mv20y

:[214]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [216]

:[215]
pushi.e 1
pop.v.i self.mv20y

:[216]
push.v self.mv20x
pushi.e 0
cmp.i.v LT
bf [218]

:[217]
pushi.e 3
pop.v.i self.mv20x

:[218]
push.v self.mv20x
pushi.e 3
cmp.i.v GT
bf [220]

:[219]
pushi.e 0
pop.v.i self.mv20x

:[220]
push.v self.mv20y
pushi.e 0
cmp.i.v EQ
bf [222]

:[221]
pushi.e 64
pop.v.i self.x
pushi.e 278
pop.v.i self.y

:[222]
push.v self.mv20y
pushi.e 1
cmp.i.v EQ
bf [end]

:[223]
pushi.e 444
pop.v.i self.y
push.v self.mv20x
pushi.e 0
cmp.i.v EQ
bf [225]

:[224]
pushi.e 40
pop.v.i self.x

:[225]
push.v self.mv20x
pushi.e 1
cmp.i.v EQ
bf [227]

:[226]
pushi.e 196
pop.v.i self.x

:[227]
push.v self.mv20x
pushi.e 2
cmp.i.v EQ
bf [229]

:[228]
pushi.e 354
pop.v.i self.x

:[229]
push.v self.mv20x
pushi.e 3
cmp.i.v EQ
bf [end]

:[230]
pushi.e 508
pop.v.i self.x

:[end]