.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1988
pop.v.i self.sprite_index

:[2]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1559
pop.v.i self.sprite_index

:[4]
pushbltn.v self.room
pushi.e 89
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1697
pop.v.i self.sprite_index

:[6]
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bf [9]

:[7]
pushi.e 1642
pop.v.i self.sprite_index
pushi.e -5
pushi.e 105
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1699
pop.v.i self.sprite_index

:[11]
pushbltn.v self.room
pushi.e 98
cmp.i.v EQ
bf [14]

:[12]
pushi.e 1641
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.visible
pushi.e -5
pushi.e 106
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1720
pop.v.i self.sprite_index

:[16]
pushbltn.v self.room
pushi.e 117
cmp.i.v EQ
bf [19]

:[17]
pushi.e 1268
pop.v.i self.sprite_index
pushi.e -5
pushi.e 252
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [22]

:[20]
pushi.e 1658
pop.v.i self.sprite_index
call.i scr_murderlv(argc=0)
pushi.e 9
cmp.i.v GTE
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [24]

:[23]
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [31]

:[28]
pushi.e 1637
pop.v.i self.sprite_index
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y

:[31]
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [36]

:[32]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
pushi.e 1773
pop.v.i self.sprite_index
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [36]

:[35]
pushi.e 1772
pop.v.i self.sprite_index

:[36]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [41]

:[37]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [39]

:[38]
call.i instance_destroy(argc=0)
popz.v

:[39]
pushi.e 1771
pop.v.i self.sprite_index
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [41]

:[40]
pushi.e 1770
pop.v.i self.sprite_index

:[41]
pushbltn.v self.room
pushi.e 146
cmp.i.v EQ
bf [44]

:[42]
pushi.e 1944
pop.v.i self.sprite_index
pushi.e -5
pushi.e 110
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
pushbltn.v self.room
pushi.e 161
cmp.i.v EQ
bf [47]

:[45]
pushi.e 1945
pop.v.i self.sprite_index
pushi.e -5
pushi.e 111
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
call.i instance_destroy(argc=0)
popz.v

:[47]
pushbltn.v self.room
pushi.e 96
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1356
pop.v.i self.sprite_index
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y

:[49]
pushbltn.v self.room
pushi.e 206
cmp.i.v EQ
bt [51]

:[50]
pushbltn.v self.room
pushi.e 207
cmp.i.v EQ
b [52]

:[51]
push.e 1

:[52]
bf [54]

:[53]
pushi.e 1715
pop.v.i self.sprite_index

:[54]
pushbltn.v self.room
pushi.e 238
cmp.i.v EQ
bf [65]

:[55]
pushi.e 0
pop.v.i self.q
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fcheck1
pushi.e 0
conv.i.v
push.s "E"@47762
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fcheck2
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e -5
pushi.e 475
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1
pop.v.i self.q

:[57]
push.v self.fcheck1
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.v self.fcheck2
pushi.e 2
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 1
pop.v.i self.q

:[62]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1184
pop.v.i self.sprite_index
b [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bf [71]

:[66]
push.v self.y
pushi.e 70
cmp.i.v LT
bf [71]

:[67]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [69]

:[68]
call.i instance_destroy(argc=0)
popz.v

:[69]
pushi.e 1939
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 136
cmp.i.v GTE
bf [71]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[71]
pushbltn.v self.room
pushi.e 223
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1989
pop.v.i self.sprite_index

:[73]
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1998
pop.v.i self.sprite_index

:[75]
pushbltn.v self.room
pushi.e 251
cmp.i.v EQ
bf [77]

:[76]
push.i 8421504
pop.v.i self.image_blend
pushi.e 1333
pop.v.i self.sprite_index

:[77]
pushbltn.v self.room
pushi.e 164
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1374
pop.v.i self.sprite_index

:[79]
pushbltn.v self.room
pushi.e 170
cmp.i.v EQ
bf [82]

:[80]
pushi.e 1766
pop.v.i self.sprite_index
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [86]

:[83]
pushi.e 1714
pop.v.i self.sprite_index
pushi.e 1714
conv.i.v
push.v self.y
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.tread
push.v self.tread
conv.v.i
pushenv [85]

:[84]
call.i scr_depth(argc=0)
popz.v
push.d 0.2
pop.v.d self.image_speed

:[85]
popenv [84]
pushi.e 0
pop.v.i self.visible

:[86]
pushbltn.v self.room
pushi.e 83
cmp.i.v EQ
bf [89]

:[87]
pushi.e 1634
pop.v.i self.sprite_index
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [89]

:[88]
call.i instance_destroy(argc=0)
popz.v

:[89]
pushbltn.v self.room
pushi.e 48
cmp.i.v EQ
bf [91]

:[90]
pushi.e 2251
pop.v.i self.sprite_index

:[91]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1757
pop.v.i self.sprite_index

:[93]
pushbltn.v self.room
pushi.e 266
cmp.i.v EQ
bf [95]

:[94]
pushi.e 1863
pop.v.i self.sprite_index

:[95]
pushbltn.v self.room
pushi.e 184
cmp.i.v EQ
bf [104]

:[96]
push.v self.x
pushi.e 500
cmp.i.v GT
bf [98]

:[97]
pushi.e 2069
pop.v.i self.sprite_index

:[98]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [100]

:[99]
pushi.e 2068
pop.v.i self.sprite_index

:[100]
push.v self.x
pushi.e 780
cmp.i.v GT
bf [102]

:[101]
pushi.e 2074
pop.v.i self.sprite_index

:[102]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
pushbltn.v self.room
pushi.e 178
cmp.i.v EQ
bf [111]

:[105]
pushi.e 2063
pop.v.i self.sprite_index
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
pushi.e 2064
pop.v.i self.sprite_index

:[107]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
pushglb.v global.plot
pushi.e 167
cmp.i.v LT
bf [111]

:[110]
call.i instance_destroy(argc=0)
popz.v

:[111]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [114]

:[112]
pushi.e 2073
pop.v.i self.sprite_index
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [114]

:[113]
call.i instance_destroy(argc=0)
popz.v

:[114]
pushbltn.v self.room
pushi.e 158
cmp.i.v EQ
bf [121]

:[115]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [117]

:[116]
call.i instance_destroy(argc=0)
popz.v

:[117]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
pushi.e 2066
pop.v.i self.sprite_index
push.v self.x
pushi.e 160
cmp.i.v GT
bf [121]

:[120]
pushi.e 2065
pop.v.i self.sprite_index

:[121]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [124]

:[122]
pushi.e 2050
pop.v.i self.sprite_index
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [124]

:[123]
call.i instance_destroy(argc=0)
popz.v

:[124]
pushbltn.v self.room
pushi.e 113
cmp.i.v EQ
bf [end]

:[125]
pushi.e 1068
pop.v.i self.sprite_index
pushglb.v global.osflavor
pushi.e 4
cmp.i.v NEQ
bt [127]

:[126]
call.i scr_murderlv(argc=0)
pushi.e 9
cmp.i.v LT
b [128]

:[127]
push.e 1

:[128]
bf [end]

:[129]
call.i instance_destroy(argc=0)
popz.v

:[end]