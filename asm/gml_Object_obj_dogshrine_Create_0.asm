.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 4
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 326
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushi.e 0
pop.v.i self.dogtimer
push.d 0.1
pop.v.d self.image_speed
pushi.e 146
pop.v.i self.x
pushi.e 49
pop.v.i self.y
pushglb.v global.currentsong
call.i caster_is_playing(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [6]

:[3]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 6
cmp.i.v GTE
bf [5]

:[4]
pushi.e 240
pop.v.i global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
b [6]

:[5]
pushi.e 239
pop.v.i global.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[6]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pop.v.v self.doglevel
push.v self.doglevel
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 295
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 2
pushi.e -5
pushi.e 295
pop.v.i [array]global.flag

:[11]
push.v self.doglevel
pushi.e 15
cmp.i.v EQ
bf [13]

:[12]
pushi.e 6
pushi.e -5
pushi.e 295
pop.v.i [array]global.flag

:[13]
pushi.e -5
pushi.e 292
push.v [array]global.flag
pushi.e -5
pushi.e 293
push.v [array]global.flag
cmp.v.v GTE
bf [15]

:[14]
pushi.e 0
pushi.e -5
pushi.e 292
pop.v.i [array]global.flag

:[15]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 2
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[17]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 4
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[19]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 6
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[21]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
pushi.e 8
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[23]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [25]

:[24]
pushi.e 10
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[25]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [27]

:[26]
pushi.e 13
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[27]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 6
cmp.i.v EQ
bf [29]

:[28]
pushi.e 16
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[29]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 7
cmp.i.v EQ
bf [31]

:[30]
pushi.e 19
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[31]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 8
cmp.i.v EQ
bf [33]

:[32]
pushi.e 22
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[33]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 9
cmp.i.v EQ
bf [35]

:[34]
pushi.e 25
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[35]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 10
cmp.i.v EQ
bf [37]

:[36]
pushi.e 30
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[37]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 11
cmp.i.v EQ
bf [39]

:[38]
pushi.e 35
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[39]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 12
cmp.i.v EQ
bf [41]

:[40]
pushi.e 40
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[41]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 13
cmp.i.v EQ
bf [43]

:[42]
pushi.e 50
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[43]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 14
cmp.i.v EQ
bf [45]

:[44]
pushi.e 70
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[45]
pushi.e -5
pushi.e 294
push.v [array]global.flag
pushi.e 15
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pushi.e -5
pushi.e 293
pop.v.i [array]global.flag

:[47]
pushi.e 1057
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dogshrine
push.v self.dogshrine
conv.v.i
pushenv [49]

:[48]
push.i 900000
pop.v.i self.depth

:[49]
popenv [48]
pushi.e 1067
conv.i.v
pushi.e 76
conv.i.v
pushi.e 137
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.donationbox
push.v self.donationbox
conv.v.i
pushenv [51]

:[50]
push.i 860000
pop.v.i self.depth
pushi.e 2
conv.i.v
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 1.5
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 2.2
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_xscale
pushi.e 1
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[51]
popenv [50]
push.v self.doglevel
pushi.e 1
cmp.i.v GTE
bf [55]

:[52]
pushi.e 1069
conv.i.v
pushi.e 6
conv.i.v
pushi.e 46
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.fairylights
push.v self.fairylights
conv.v.i
pushenv [54]

:[53]
push.i 960000
pop.v.i self.depth

:[54]
popenv [53]

:[55]
push.v self.doglevel
pushi.e 2
cmp.i.v GTE
bf [59]

:[56]
pushi.e 1065
conv.i.v
pushi.e 160
conv.i.v
pushi.e 226
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dango
push.v self.dango
conv.v.i
pushenv [58]

:[57]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.8
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 0.8
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_xscale
pushi.e 2
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[58]
popenv [57]

:[59]
push.v self.doglevel
pushi.e 6
cmp.i.v GTE
bf [63]

:[60]
pushi.e 1062
conv.i.v
pushi.e 80
conv.i.v
pushi.e 232
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.boombox
push.v self.boombox
conv.v.i
pushenv [62]

:[61]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 1.4
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 1.4
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_xscale
pushi.e 3
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[62]
popenv [61]

:[63]
push.v self.doglevel
pushi.e 7
cmp.i.v GTE
bf [67]

:[64]
pushi.e 1063
conv.i.v
pushi.e 112
conv.i.v
pushi.e 256
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.cd
push.v self.cd
conv.v.i
pushenv [66]

:[65]
push.i 900000
pop.v.i self.depth
pushi.e 1350
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.5
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 0.3
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 4
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[66]
popenv [65]

:[67]
push.v self.doglevel
pushi.e 5
cmp.i.v GTE
bf [71]

:[68]
push.v self.dogshrine
conv.v.i
pushenv [70]

:[69]
pushi.e 1
pop.v.i self.image_index

:[70]
popenv [69]

:[71]
push.v self.doglevel
pushi.e 3
cmp.i.v GTE
bf [75]

:[72]
pushi.e 1060
conv.i.v
pushi.e 42
conv.i.v
pushi.e 48
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.ad
push.v self.ad
conv.v.i
pushenv [74]

:[73]
call.i scr_depth(argc=0)
popz.v
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
conv.i.v
push.v self.y
pushi.e 58
add.i.v
push.v self.x
pushi.e 22
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 58
add.i.v
push.v self.x
pushi.e 22
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.8
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_yscale
push.d 0.8
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 5
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[74]
popenv [73]

:[75]
push.v self.doglevel
pushi.e 4
cmp.i.v GTE
bf [79]

:[76]
pushi.e 1070
conv.i.v
pushi.e 160
conv.i.v
pushi.e 194
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.photo1
push.v self.photo1
conv.v.i
pushenv [78]

:[77]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.8
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 0.8
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_xscale
pushi.e 6
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[78]
popenv [77]

:[79]
push.v self.doglevel
pushi.e 8
cmp.i.v GTE
bf [83]

:[80]
pushi.e 1070
conv.i.v
pushi.e 80
conv.i.v
pushi.e 108
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.photo2
push.v self.photo2
conv.v.i
pushenv [82]

:[81]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.8
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_xscale
push.d 0.8
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_xscale
pushi.e 7
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[82]
popenv [81]

:[83]
push.v self.doglevel
pushi.e 9
cmp.i.v GTE
bf [87]

:[84]
pushi.e 1071
conv.i.v
pushi.e 150
conv.i.v
pushi.e 60
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.rope1
push.v self.rope1
conv.v.i
pushenv [86]

:[85]
push.i 900000
pop.v.i self.depth
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 3
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.6
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 8
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[86]
popenv [85]

:[87]
push.v self.doglevel
pushi.e 10
cmp.i.v GTE
bf [93]

:[88]
push.v self.dogshrine
conv.v.i
pushenv [90]

:[89]
pushi.e 2
pop.v.i self.image_index

:[90]
popenv [89]
push.v self.donationbox
conv.v.i
pushenv [92]

:[91]
pushi.e 1
pop.v.i self.image_index

:[92]
popenv [91]

:[93]
push.v self.doglevel
pushi.e 11
cmp.i.v GTE
bf [97]

:[94]
pushi.e 1066
conv.i.v
pushi.e 136
conv.i.v
pushi.e 257
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.dogtap
push.v self.dogtap
conv.v.i
pushenv [96]

:[95]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 13
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.8
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_yscale
push.d 0.8
push.v self.mysolid
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 9
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[96]
popenv [95]

:[97]
push.v self.doglevel
pushi.e 12
cmp.i.v GTE
bf [101]

:[98]
pushi.e 1061
conv.i.v
pushi.e 162
conv.i.v
pushi.e 88
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.blueprint
push.v self.blueprint
conv.v.i
pushenv [100]

:[99]
push.i 900000
pop.v.i self.depth
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 2
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.6
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 2
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 10
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[100]
popenv [99]

:[101]
push.v self.doglevel
pushi.e 13
cmp.i.v GTE
bf [105]

:[102]
pushi.e 1071
conv.i.v
pushi.e 124
conv.i.v
pushi.e 52
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.rope2
push.v self.rope2
conv.v.i
pushenv [104]

:[103]
push.i 900000
pop.v.i self.depth
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 3
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.myint
push.d 0.6
push.v self.myint
conv.v.i
pop.v.d [stacktop]self.image_yscale
pushi.e 11
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[104]
popenv [103]

:[105]
push.v self.doglevel
pushi.e 14
cmp.i.v GTE
bf [109]

:[106]
pushi.e 1064
conv.i.v
pushi.e 67
conv.i.v
pushi.e 193
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.cert
push.v self.cert
conv.v.i
pushenv [108]

:[107]
call.i scr_depth(argc=0)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 1
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mysolid
pushi.e 1350
conv.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 1
add.i.v
call.i instance_create(argc=3)
pop.v.v self.myint
pushi.e 1
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.mysolid
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 12
push.v self.myint
conv.v.i
pop.v.i [stacktop]self.dognumber

:[108]
popenv [107]

:[109]
push.v self.doglevel
pushi.e 15
cmp.i.v GTE
bf [end]

:[110]
push.v self.dogshrine
conv.v.i
pushenv [112]

:[111]
pushi.e 3
pop.v.i self.image_index

:[112]
popenv [111]
push.v self.donationbox
conv.v.i
pushenv [114]

:[113]
pushi.e 2
pop.v.i self.image_index

:[114]
popenv [113]

:[end]