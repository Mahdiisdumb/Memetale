.localvar 0 arguments

:[0]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [178]

:[1]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.xpreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.xpreward
add.v.v
pop.i.v [array]global.xpreward
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.goldreward
add.v.v
pop.i.v [array]global.goldreward
pushi.e 0
pop.v.i global.vaporspeed
push.v self.sprite_index
pop.v.v global.monstersprite
pushi.e 156
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.object_index
pushi.e 225
cmp.i.v EQ
bf [5]

:[2]
push.v self.ddd
conv.v.i
pushenv [4]

:[3]
pushi.e 1
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[4]
popenv [3]

:[5]
push.v self.object_index
pushi.e 236
cmp.i.v EQ
bf [9]

:[6]
push.v self.ddd
conv.v.i
pushenv [8]

:[7]
pushi.e 2
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[8]
popenv [7]

:[9]
push.v self.object_index
pushi.e 217
cmp.i.v EQ
bf [13]

:[10]
push.v self.ddd
conv.v.i
pushenv [12]

:[11]
pushi.e 3
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[12]
popenv [11]

:[13]
push.v self.object_index
pushi.e 218
cmp.i.v EQ
bf [17]

:[14]
push.v self.ddd
conv.v.i
pushenv [16]

:[15]
pushi.e 4
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[16]
popenv [15]

:[17]
push.v self.object_index
pushi.e 221
cmp.i.v EQ
bf [21]

:[18]
push.v self.ddd
conv.v.i
pushenv [20]

:[19]
pushi.e 5
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[20]
popenv [19]

:[21]
push.v self.object_index
pushi.e 246
cmp.i.v EQ
bf [25]

:[22]
push.v self.ddd
conv.v.i
pushenv [24]

:[23]
pushi.e 6
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[24]
popenv [23]

:[25]
push.v self.object_index
pushi.e 247
cmp.i.v EQ
bf [29]

:[26]
push.v self.ddd
conv.v.i
pushenv [28]

:[27]
pushi.e 7
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[28]
popenv [27]

:[29]
push.v self.object_index
pushi.e 248
cmp.i.v EQ
bf [33]

:[30]
push.v self.ddd
conv.v.i
pushenv [32]

:[31]
pushi.e 8
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[32]
popenv [31]

:[33]
push.v self.object_index
pushi.e 231
cmp.i.v EQ
bf [37]

:[34]
push.v self.ddd
conv.v.i
pushenv [36]

:[35]
pushi.e 9
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[36]
popenv [35]

:[37]
push.v self.object_index
pushi.e 230
cmp.i.v EQ
bf [41]

:[38]
push.v self.ddd
conv.v.i
pushenv [40]

:[39]
pushi.e 10
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[40]
popenv [39]

:[41]
push.v self.object_index
pushi.e 260
cmp.i.v EQ
bf [45]

:[42]
push.v self.ddd
conv.v.i
pushenv [44]

:[43]
pushi.e 11
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[44]
popenv [43]

:[45]
push.v self.object_index
pushi.e 253
cmp.i.v EQ
bt [47]

:[46]
push.v self.object_index
pushi.e 254
cmp.i.v EQ
b [48]

:[47]
push.e 1

:[48]
bf [52]

:[49]
push.v self.ddd
conv.v.i
pushenv [51]

:[50]
pushi.e 12
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[51]
popenv [50]

:[52]
push.v self.object_index
pushi.e 292
cmp.i.v EQ
bf [56]

:[53]
push.v self.ddd
conv.v.i
pushenv [55]

:[54]
pushi.e 13
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[55]
popenv [54]

:[56]
push.v self.object_index
pushi.e 274
cmp.i.v EQ
bf [60]

:[57]
push.v self.ddd
conv.v.i
pushenv [59]

:[58]
pushi.e 14
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[59]
popenv [58]

:[60]
push.v self.object_index
pushi.e 257
cmp.i.v EQ
bf [64]

:[61]
push.v self.ddd
conv.v.i
pushenv [63]

:[62]
pushi.e 15
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[63]
popenv [62]

:[64]
push.v self.object_index
pushi.e 214
cmp.i.v EQ
bt [66]

:[65]
push.v self.object_index
pushi.e 204
cmp.i.v EQ
b [67]

:[66]
push.e 1

:[67]
bf [71]

:[68]
push.v self.ddd
conv.v.i
pushenv [70]

:[69]
pushi.e 16
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[70]
popenv [69]

:[71]
push.v self.object_index
pushi.e 207
cmp.i.v EQ
bf [75]

:[72]
push.v self.ddd
conv.v.i
pushenv [74]

:[73]
pushi.e 17
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[74]
popenv [73]

:[75]
push.v self.object_index
pushi.e 213
cmp.i.v EQ
bf [79]

:[76]
push.v self.ddd
conv.v.i
pushenv [78]

:[77]
pushi.e 18
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[78]
popenv [77]

:[79]
push.v self.object_index
pushi.e 208
cmp.i.v EQ
bf [83]

:[80]
push.v self.ddd
conv.v.i
pushenv [82]

:[81]
pushi.e 19
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[82]
popenv [81]

:[83]
push.v self.object_index
pushi.e 210
cmp.i.v EQ
bf [87]

:[84]
push.v self.ddd
conv.v.i
pushenv [86]

:[85]
pushi.e 20
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[86]
popenv [85]

:[87]
push.v self.object_index
pushi.e 209
cmp.i.v EQ
bf [91]

:[88]
push.v self.ddd
conv.v.i
pushenv [90]

:[89]
pushi.e 21
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[90]
popenv [89]

:[91]
push.v self.object_index
pushi.e 212
cmp.i.v EQ
bf [95]

:[92]
push.v self.ddd
conv.v.i
pushenv [94]

:[93]
pushi.e 22
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[94]
popenv [93]

:[95]
push.v self.object_index
pushi.e 200
cmp.i.v EQ
bf [99]

:[96]
push.v self.ddd
conv.v.i
pushenv [98]

:[97]
pushi.e 23
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[98]
popenv [97]

:[99]
push.v self.object_index
pushi.e 294
cmp.i.v EQ
bf [103]

:[100]
push.v self.ddd
conv.v.i
pushenv [102]

:[101]
pushi.e 18
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[102]
popenv [101]

:[103]
push.v self.object_index
pushi.e 338
cmp.i.v EQ
bf [107]

:[104]
push.v self.ddd
conv.v.i
pushenv [106]

:[105]
pushi.e 24
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[106]
popenv [105]

:[107]
push.v self.object_index
pushi.e 344
cmp.i.v EQ
bf [111]

:[108]
push.v self.ddd
conv.v.i
pushenv [110]

:[109]
pushi.e 25
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[110]
popenv [109]

:[111]
push.v self.object_index
pushi.e 310
cmp.i.v EQ
bf [115]

:[112]
push.v self.ddd
conv.v.i
pushenv [114]

:[113]
pushi.e 26
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[114]
popenv [113]

:[115]
push.v self.object_index
pushi.e 311
cmp.i.v EQ
bf [119]

:[116]
push.v self.ddd
conv.v.i
pushenv [118]

:[117]
pushi.e 27
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[118]
popenv [117]

:[119]
push.v self.object_index
pushi.e 370
cmp.i.v EQ
bf [123]

:[120]
push.v self.ddd
conv.v.i
pushenv [122]

:[121]
pushi.e 28
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[122]
popenv [121]

:[123]
push.v self.object_index
pushi.e 379
cmp.i.v EQ
bf [127]

:[124]
push.v self.ddd
conv.v.i
pushenv [126]

:[125]
pushi.e 29
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[126]
popenv [125]

:[127]
push.v self.object_index
pushi.e 386
cmp.i.v EQ
bf [131]

:[128]
push.v self.ddd
conv.v.i
pushenv [130]

:[129]
pushi.e 30
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[130]
popenv [129]

:[131]
push.v self.object_index
pushi.e 395
cmp.i.v EQ
bf [135]

:[132]
push.v self.ddd
conv.v.i
pushenv [134]

:[133]
pushi.e 31
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[134]
popenv [133]

:[135]
push.v self.object_index
pushi.e 388
cmp.i.v EQ
bf [139]

:[136]
push.v self.ddd
conv.v.i
pushenv [138]

:[137]
pushi.e 32
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[138]
popenv [137]

:[139]
push.v self.object_index
pushi.e 361
cmp.i.v EQ
bf [143]

:[140]
push.v self.ddd
conv.v.i
pushenv [142]

:[141]
pushi.e 33
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[142]
popenv [141]

:[143]
push.v self.object_index
pushi.e 597
cmp.i.v EQ
bf [147]

:[144]
push.v self.ddd
conv.v.i
pushenv [146]

:[145]
pushi.e 36
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[146]
popenv [145]

:[147]
push.v self.object_index
pushi.e 599
cmp.i.v EQ
bf [151]

:[148]
push.v self.ddd
conv.v.i
pushenv [150]

:[149]
pushi.e 37
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[150]
popenv [149]

:[151]
push.v self.object_index
pushi.e 602
cmp.i.v EQ
bf [155]

:[152]
push.v self.ddd
conv.v.i
pushenv [154]

:[153]
pushi.e 38
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[154]
popenv [153]

:[155]
push.v self.object_index
pushi.e 229
cmp.i.v EQ
bf [159]

:[156]
push.v self.ddd
conv.v.i
pushenv [158]

:[157]
pushi.e 39
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[158]
popenv [157]

:[159]
push.v self.object_index
pushi.e 459
cmp.i.v EQ
bf [163]

:[160]
push.v self.ddd
conv.v.i
pushenv [162]

:[161]
pushi.e 40
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[162]
popenv [161]

:[163]
push.v self.object_index
pushi.e 219
cmp.i.v EQ
bf [167]

:[164]
push.v self.ddd
conv.v.i
pushenv [166]

:[165]
pushi.e 41
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[166]
popenv [165]

:[167]
push.v self.sprite_index
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.ht
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
push.v self.object_index
pushi.e 253
cmp.i.v EQ
bf [169]

:[168]
pushi.e 210
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.wd

:[169]
push.v self.object_index
pushi.e 254
cmp.i.v EQ
bf [171]

:[170]
pushi.e 210
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.wd

:[171]
push.v self.object_index
pushi.e 200
cmp.i.v EQ
bf [173]

:[172]
pushi.e 106
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.ht

:[173]
push.v self.object_index
pushi.e 213
cmp.i.v EQ
bf [175]

:[174]
pushi.e 84
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.ht

:[175]
pushi.e 0
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_index
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
pushi.e -5
pushglb.v global.area
conv.v.i
dup.i 1
push.v [array]global.areapop
pushi.e 1
sub.i.v
pop.i.v [array]global.areapop
pushi.e -5
pushglb.v global.area
conv.v.i
push.v [array]global.areapop
pushi.e 0
cmp.i.v LT
bf [177]

:[176]
pushi.e 0
pushi.e -5
pushglb.v global.area
conv.v.i
pop.v.i [array]global.areapop

:[177]
pushi.e 1
pushi.e -5
pushi.e 12
pop.v.i [array]global.flag

:[178]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
sub.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
mul.v.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]global.goldreward
push.v self.sprite_index
pop.v.v global.monstersprite
pushi.e 160
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
pushi.e 0
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.flag
pushi.e -5
pushi.e 23
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[180]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[end]