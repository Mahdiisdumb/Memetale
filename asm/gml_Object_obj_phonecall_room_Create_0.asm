.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.t
pushi.e 5
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.donotcall
pushbltn.v self.room
pushi.e 88
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 106
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v self.room
pushi.e 136
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 1
cmp.i.v GT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
pushbltn.v self.room
pushi.e 145
cmp.i.v EQ
bf [17]

:[16]
pushglb.v global.plot
pushi.e 129
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
pushbltn.v self.room
pushi.e 147
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.plot
pushi.e 130
cmp.i.v GT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [27]

:[26]
pushglb.v global.plot
pushi.e 131
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
pushbltn.v self.room
pushi.e 149
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 373
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 2
pop.v.i 1283.active
call.i instance_destroy(argc=0)
popz.v

:[35]
pushbltn.v self.room
pushi.e 162
cmp.i.v EQ
bf [37]

:[36]
pushglb.v global.plot
pushi.e 138
cmp.i.v GT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
pushbltn.v self.room
pushi.e 153
cmp.i.v EQ
bf [42]

:[41]
pushglb.v global.plot
push.d 133.5
cmp.d.v GTE
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
pushbltn.v self.room
pushi.e 155
cmp.i.v EQ
bf [47]

:[46]
pushglb.v global.plot
pushi.e 137
cmp.i.v GTE
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
pushbltn.v self.room
pushi.e 188
cmp.i.v EQ
bf [52]

:[51]
pushglb.v global.plot
pushi.e 175
cmp.i.v GT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
pushbltn.v self.room
pushi.e 189
cmp.i.v EQ
bf [57]

:[56]
pushglb.v global.plot
pushi.e 176
cmp.i.v GT
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
pushbltn.v self.room
pushi.e 190
cmp.i.v EQ
bf [62]

:[61]
pushi.e -5
pushi.e 415
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
pushbltn.v self.room
pushi.e 190
cmp.i.v EQ
bf [67]

:[66]
pushglb.v global.plot
pushi.e 180
cmp.i.v GT
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
pushbltn.v self.room
pushi.e 192
cmp.i.v EQ
bf [72]

:[71]
pushglb.v global.plot
pushi.e 180
cmp.i.v GTE
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
pushbltn.v self.room
pushi.e 193
cmp.i.v EQ
bf [77]

:[76]
pushglb.v global.plot
pushi.e 181
cmp.i.v GT
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
pushbltn.v self.room
pushi.e 195
cmp.i.v EQ
bf [82]

:[81]
pushglb.v global.plot
pushi.e 182
cmp.i.v GT
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
call.i instance_destroy(argc=0)
popz.v

:[85]
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bf [87]

:[86]
pushglb.v global.plot
pushi.e 184
cmp.i.v GT
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
call.i instance_destroy(argc=0)
popz.v

:[90]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [92]

:[91]
pushglb.v global.plot
pushi.e 163
cmp.i.v GTE
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
pushbltn.v self.room
pushi.e 115
cmp.i.v EQ
bf [end]

:[96]
pushi.e 1
pop.v.i self.image_yscale
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 10
cmp.i.v NEQ
bf [end]

:[97]
call.i instance_destroy(argc=0)
popz.v

:[end]