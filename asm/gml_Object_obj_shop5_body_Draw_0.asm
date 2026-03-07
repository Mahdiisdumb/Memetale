.localvar 0 arguments

:[0]
push.v self.nowemote
pushglb.v global.faceemotion
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
pushglb.v global.faceemotion
pop.v.v self.nowemote
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 62
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.i
call.i floor(argc=1)
pushi.e 178
conv.i.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 961
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
push.v self.bodyy
add.v.i
pushi.e 99
push.v self.bodyx
add.v.i
pushi.e 0
conv.i.v
pushi.e 960
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushglb.v global.faceemotion
pushi.e 0
cmp.i.v EQ
bf [37]

:[3]
pushi.e 32
pushi.e -1
pushi.e 0
push.v [array]self.offy
add.v.i
push.v self.facey
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i floor(argc=1)
pushi.e 138
pushi.e -1
pushi.e 0
push.v [array]self.offx
add.v.i
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 962
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 40
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 139
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 963
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 48
pushi.e -1
pushi.e 2
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 141
pushi.e -1
pushi.e 2
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 969
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer
push.v self.facetimer
pushi.e 90
cmp.i.v GT
bf [5]

:[4]
push.v self.facetimer
pushi.e 110
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.facex
push.v self.facetimer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
add.v.v
pop.v.v self.facex

:[8]
push.v self.facetimer
pushi.e 130
cmp.i.v GT
bf [10]

:[9]
push.v self.facetimer
pushi.e 150
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v self.facex
push.v self.facetimer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
add.v.v
pop.v.v self.facex

:[13]
push.v self.facetimer
pushi.e 190
cmp.i.v GT
bf [15]

:[14]
push.v self.facetimer
pushi.e 230
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
push.v self.facex
push.d 0.9
mul.d.v
pop.v.v self.facex
push.v self.facex
push.d 0.5
cmp.d.v LTE
bf [19]

:[18]
pushi.e 0
pop.v.i self.facex

:[19]
push.v self.facetimer
pushi.e 290
cmp.i.v GT
bf [21]

:[20]
push.v self.facetimer
pushi.e 310
cmp.i.v LT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.v self.facey
push.v self.facetimer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
add.v.v
pop.v.v self.facey

:[24]
push.v self.facetimer
pushi.e 326
cmp.i.v GT
bf [26]

:[25]
push.v self.facetimer
pushi.e 345
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v self.facey
push.v self.facetimer
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.v
pop.v.v self.facey

:[29]
push.v self.facetimer
pushi.e 390
cmp.i.v GT
bf [31]

:[30]
push.v self.facetimer
pushi.e 430
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [35]

:[33]
push.v self.facey
push.d 0.9
mul.d.v
pop.v.v self.facey
push.v self.facey
push.d 0.5
cmp.d.v LTE
bf [35]

:[34]
pushi.e 0
pop.v.i self.facex

:[35]
push.v self.facetimer
pushi.e 460
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.facetimer

:[37]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.d 0.8
conv.d.v
call.i random(argc=1)
push.d 0.8
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr
push.d 0.8
conv.d.v
call.i random(argc=1)
push.d 0.8
conv.d.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr2
pushi.e 32
pushi.e -1
pushi.e 0
push.v [array]self.offy
add.v.i
push.v self.facey
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.facetimer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
call.i floor(argc=1)
pushi.e 138
pushi.e -1
pushi.e 0
push.v [array]self.offx
add.v.i
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 962
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 38
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
push.v self.rr2
add.v.v
call.i floor(argc=1)
pushi.e 135
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
push.v self.rr
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 964
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 48
pushi.e -1
pushi.e 2
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 141
pushi.e -1
pushi.e 2
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 969
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[39]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [59]

:[40]
pushi.e 32
pushi.e -1
pushi.e 0
push.v [array]self.offy
add.v.i
push.v self.facey
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i floor(argc=1)
pushi.e 138
pushi.e -1
pushi.e 0
push.v [array]self.offx
add.v.i
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 962
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 40
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 139
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 965
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 48
pushi.e -1
pushi.e 2
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 141
pushi.e -1
pushi.e 2
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 970
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 39
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.i
pushi.e 133
conv.i.v
pushi.e 0
conv.i.v
pushi.e 974
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facetimer
pushi.e 45
cmp.i.v GT
bf [42]

:[41]
push.v self.facetimer
pushi.e 55
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.v self.facex
push.v self.facetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
add.v.v
pop.v.v self.facex

:[45]
push.v self.facetimer
pushi.e 65
cmp.i.v GT
bf [47]

:[46]
push.v self.facetimer
pushi.e 75
cmp.i.v LT
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
push.v self.facex
push.v self.facetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.8
mul.d.v
add.v.v
pop.v.v self.facex

:[50]
push.v self.facetimer
pushi.e 95
cmp.i.v GT
bf [52]

:[51]
push.v self.facetimer
pushi.e 115
cmp.i.v LT
b [53]

:[52]
push.e 0

:[53]
bf [56]

:[54]
push.v self.facex
push.d 0.9
mul.d.v
pop.v.v self.facex
push.v self.facex
push.d 0.5
cmp.d.v LTE
bf [56]

:[55]
pushi.e 0
pop.v.i self.facex

:[56]
push.v self.facetimer
pushi.e 140
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
pop.v.i self.facetimer

:[58]
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[59]
pushglb.v global.faceemotion
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 2
pop.v.i self.facex
pushi.e -2
pop.v.i self.facey
pushi.e 32
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 137
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 966
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 42
pushi.e -1
pushi.e 2
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 146
pushi.e -1
pushi.e 2
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 971
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[61]
pushglb.v global.faceemotion
pushi.e 4
cmp.i.v EQ
bf [63]

:[62]
push.v self.facetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
pop.v.v self.facey
pushi.e 32
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 137
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 967
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 43
pushi.e -1
pushi.e 2
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 144
pushi.e -1
pushi.e 2
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
push.v self.siner
push.d 1.5
div.d.v
call.i cos(argc=1)
push.d 1.5
mul.d.v
add.v.v
call.i floor(argc=1)
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 971
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 39
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
add.v.i
pushi.e 133
conv.i.v
pushi.e 0
conv.i.v
pushi.e 974
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[63]
pushglb.v global.faceemotion
pushi.e 5
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr
pushi.e 1
conv.i.v
call.i random(argc=1)
pushi.e 1
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.rr2
push.v self.rr
pop.v.v self.bodyx
push.v self.rr2
pop.v.v self.bodyy
push.v self.facetimer
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.facey
pushi.e 31
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 137
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
pushi.e 0
conv.i.v
pushi.e 968
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 43
pushi.e -1
pushi.e 2
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 144
pushi.e -1
pushi.e 2
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
push.v self.siner
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
call.i floor(argc=1)
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 971
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 39
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.i
pushi.e 133
conv.i.v
pushi.e 0
conv.i.v
pushi.e 974
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[65]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v EQ
bf [67]

:[66]
pushi.e 25
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 139
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 972
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[67]
pushglb.v global.faceemotion
pushi.e 7
cmp.i.v EQ
bf [69]

:[68]
pushi.e 25
pushi.e -1
pushi.e 1
push.v [array]self.offy
add.v.i
push.v self.facey
add.v.v
call.i floor(argc=1)
pushi.e 139
pushi.e -1
pushi.e 1
push.v [array]self.offx
add.v.i
push.v self.facex
add.v.v
call.i floor(argc=1)
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 973
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer

:[69]
pushi.e 68
conv.i.v
pushi.e 80
push.v self.boxx
add.v.i
pushi.e 0
conv.i.v
pushi.e 958
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.sellmenu
pushi.e 1
cmp.i.v EQ
bf [155]

:[70]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.value
pushi.e 5
pushi.e -1
pushi.e 1
pop.v.i [array]self.value
pushi.e 666
pushi.e -1
pushi.e 2
pop.v.i [array]self.value
pushi.e 10
pushi.e -1
pushi.e 3
pop.v.i [array]self.value
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.value
pushi.e 5
pushi.e -1
pushi.e 5
pop.v.i [array]self.value
pushi.e 12
pushi.e -1
pushi.e 6
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 7
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 8
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 9
pop.v.i [array]self.value
pushi.e 0
pushi.e -1
pushi.e 10
pop.v.i [array]self.value
pushi.e 0
pop.v.i self.i

:[71]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [83]

:[72]
push.s "    "@50876
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
call.i string(argc=1)
add.v.s
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.s_value
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
pushi.e 10
cmp.i.v GTE
bf [74]

:[73]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
pushi.e 100
cmp.i.v LT
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.s "  "@7168
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
call.i string(argc=1)
add.v.s
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.s_value

:[77]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
pushi.e 100
cmp.i.v GTE
bf [79]

:[78]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
pushi.e 1000
cmp.i.v LT
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
call.i string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.s_value

:[82]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [71]

:[83]
pushi.e -1
pop.v.i self.odd
push.v self.sellpos
pushi.e 0
cmp.i.v EQ
bt [87]

:[84]
push.v self.sellpos
pushi.e 2
cmp.i.v EQ
bt [87]

:[85]
push.v self.sellpos
pushi.e 4
cmp.i.v EQ
bt [87]

:[86]
push.v self.sellpos
pushi.e 6
cmp.i.v EQ
b [88]

:[87]
push.e 1

:[88]
bf [90]

:[89]
pushi.e 0
pop.v.i self.odd
pushi.e 135
push.v self.sellpos
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
mul.i.v
add.v.i
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[90]
push.v self.sellpos
pushi.e 1
cmp.i.v EQ
bt [94]

:[91]
push.v self.sellpos
pushi.e 3
cmp.i.v EQ
bt [94]

:[92]
push.v self.sellpos
pushi.e 5
cmp.i.v EQ
bt [94]

:[93]
push.v self.sellpos
pushi.e 7
cmp.i.v EQ
b [95]

:[94]
push.e 1

:[95]
bf [97]

:[96]
pushi.e 1
pop.v.i self.odd
pushi.e 135
push.v self.sellpos
pushi.e 1
sub.i.v
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
mul.i.v
add.v.i
pushi.e 155
conv.i.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[97]
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
bf [99]

:[98]
pushi.e 215
conv.i.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[99]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [101]

:[100]
push.v self.odd
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [105]

:[103]
pushi.e -1
push.v self.sellpos
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [105]

:[104]
push.v self.sellpos
pushi.e 1
add.i.v
pop.v.v self.sellpos

:[105]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [107]

:[106]
push.v self.odd
pushi.e 1
cmp.i.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
push.v self.sellpos
pushi.e 1
sub.i.v
pop.v.v self.sellpos

:[110]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [129]

:[111]
pushi.e 0
pop.v.i self.d_fail
pushi.e -1
push.v self.sellpos
pushi.e 2
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v EQ
bf [113]

:[112]
pushi.e 1
pop.v.i self.d_fail

:[113]
push.v self.d_fail
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
pushi.e -1
push.v self.sellpos
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
b [116]

:[115]
push.e 0

:[116]
bf [118]

:[117]
pushi.e 2
pop.v.i self.d_fail

:[118]
push.v self.sellpos
pushi.e 6
cmp.i.v EQ
bt [121]

:[119]
push.v self.sellpos
pushi.e 7
cmp.i.v EQ
bt [121]

:[120]
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
b [122]

:[121]
push.e 1

:[122]
bf [124]

:[123]
pushi.e 1
pop.v.i self.d_fail

:[124]
push.v self.d_fail
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 8
pop.v.i self.sellpos
b [129]

:[126]
push.v self.d_fail
pushi.e 2
cmp.i.v EQ
bf [128]

:[127]
push.v self.sellpos
pushi.e 1
add.i.v
pop.v.v self.sellpos
b [129]

:[128]
push.v self.sellpos
pushi.e 2
add.i.v
pop.v.v self.sellpos

:[129]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [144]

:[130]
push.v self.sellpos
pushi.e 0
cmp.i.v NEQ
bf [132]

:[131]
push.v self.sellpos
pushi.e 1
cmp.i.v NEQ
b [133]

:[132]
push.e 0

:[133]
bf [144]

:[134]
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
bf [143]

:[135]
pushi.e -1
pop.v.i self.this_i
pushi.e 7
pop.v.i self.i

:[136]
push.v self.this_i
pushi.e -1
cmp.i.v EQ
bf [142]

:[137]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [139]

:[138]
push.v self.i
pop.v.v self.this_i

:[139]
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
push.v self.i
pushi.e -1
cmp.i.v EQ
bf [141]

:[140]
pushi.e 8
pop.v.i self.this_i

:[141]
b [136]

:[142]
push.v self.this_i
pop.v.v self.sellpos
b [144]

:[143]
push.v self.sellpos
pushi.e 2
sub.i.v
pop.v.v self.sellpos

:[144]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[145]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [151]

:[146]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [148]

:[147]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
conv.v.i
push.v [array]self.s_value
push.s "G - Ninechara"@50880
add.s.v
pushi.e 130
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v

:[148]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.value
pushi.e 0
cmp.i.v NEQ
bf [150]

:[149]
pushi.e -1
push.v self.i
pushi.e 2
mul.i.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.s_value
push.s "G - Ninechara"@50880
add.s.v
pushi.e 130
push.v self.i
pushi.e 20
mul.i.v
add.v.i
pushi.e 170
conv.i.v
call.i draw_text(argc=3)
popz.v

:[150]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [145]

:[151]
push.s "shop_exit_submenu"@5053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 210
conv.i.v
pushi.e 30
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "(9999 G)"@50881
conv.s.v
pushi.e 210
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [155]

:[152]
pushi.e 3
pop.v.i self.buffer
push.v self.sellpos
pushi.e 8
cmp.i.v EQ
bf [154]

:[153]
pushi.e 0
pop.v.i self.sellmenu
b [155]

:[154]
pushi.e 2
pop.v.i self.sellmenu
pushi.e 0
pop.v.i self.sellpos2

:[155]
push.v self.sellmenu
pushi.e 2
cmp.i.v EQ
bf [169]

:[156]
push.v self.buffer
pushi.e 1
sub.i.v
pop.v.v self.buffer
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.s "Really sell Ninechara for "@50882
pushi.e -1
push.v self.sellpos
conv.v.i
push.v [array]self.value
call.i string(argc=1)
add.v.s
push.s "G?"@50883
add.s.v
pushi.e 150
conv.i.v
pushi.e 55
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "Yes"@6929
conv.s.v
pushi.e 180
conv.i.v
pushi.e 80
conv.i.v
call.i draw_text(argc=3)
popz.v
push.s "No"@6930
conv.s.v
pushi.e 180
conv.i.v
pushi.e 190
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 185
conv.i.v
pushi.e 65
push.v self.sellpos2
pushi.e 110
mul.i.v
add.v.i
pushi.e 0
conv.i.v
pushi.e 61
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "(9999 G)"@50881
conv.s.v
pushi.e 210
conv.i.v
pushi.e 200
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [158]

:[157]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [159]

:[158]
push.e 1

:[159]
bf [163]

:[160]
push.v self.sellpos2
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 1
pop.v.i self.sellpos2
b [163]

:[162]
pushi.e 0
pop.v.i self.sellpos2

:[163]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [165]

:[164]
push.v self.buffer
pushi.e 0
cmp.i.v LTE
b [166]

:[165]
push.e 0

:[166]
bf [169]

:[167]
push.v self.sellpos2
pushi.e 1
cmp.i.v EQ
bf [169]

:[168]
pushi.e 1
pop.v.i self.sellmenu
b [169]

:[169]
pushi.e -5
pushi.e 276
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[170]
pushi.e 1
push.v self.bodyy
add.v.i
pushi.e 99
push.v self.bodyx
add.v.i
pushi.e 37
add.i.v
pushi.e 0
conv.i.v
pushi.e 959
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]