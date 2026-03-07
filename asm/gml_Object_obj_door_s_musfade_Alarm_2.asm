.localvar 0 arguments

:[0]
pushi.e 19
pop.v.i global.entrance
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [2]

:[1]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 99
cmp.i.v EQ
bf [4]

:[3]
pushi.e 116
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [6]

:[5]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [8]

:[7]
pushi.e 122
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [10]

:[9]
pushi.e 119
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [12]

:[11]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushbltn.v self.room
pushi.e 99
cmp.i.v EQ
bf [14]

:[13]
pushi.e 116
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v self.room
pushi.e 101
cmp.i.v EQ
bf [16]

:[15]
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bf [18]

:[17]
pushi.e 101
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v self.room
pushi.e 156
cmp.i.v EQ
bf [20]

:[19]
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v self.room
pushi.e 157
cmp.i.v EQ
bf [22]

:[21]
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [24]

:[23]
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 214
cmp.i.v EQ
bf [26]

:[25]
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v self.room
pushi.e 168
cmp.i.v EQ
bf [28]

:[27]
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 169
cmp.i.v EQ
bf [30]

:[29]
pushi.e 213
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v self.room
pushi.e 213
cmp.i.v EQ
bf [43]

:[31]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
pushi.e 214
conv.i.v
call.i room_goto(argc=1)
popz.v

:[33]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 156
conv.i.v
call.i room_goto(argc=1)
popz.v

:[35]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushi.e 157
conv.i.v
call.i room_goto(argc=1)
popz.v

:[37]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 168
conv.i.v
call.i room_goto(argc=1)
popz.v

:[39]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e 169
conv.i.v
call.i room_goto(argc=1)
popz.v

:[41]
pushi.e -5
pushi.e 398
push.v [array]global.flag
pushi.e 5
cmp.i.v EQ
bf [43]

:[42]
pushi.e 187
conv.i.v
call.i room_goto(argc=1)
popz.v

:[43]
pushbltn.v self.room
pushi.e 212
cmp.i.v EQ
bf [45]

:[44]
pushi.e 215
conv.i.v
call.i room_goto(argc=1)
popz.v

:[45]
pushbltn.v self.room
pushi.e 216
cmp.i.v EQ
bf [47]

:[46]
pushi.e 215
conv.i.v
call.i room_goto(argc=1)
popz.v

:[47]
pushbltn.v self.room
pushi.e 215
cmp.i.v EQ
bf [52]

:[48]
pushi.e -5
pushi.e 431
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 212
conv.i.v
call.i room_goto(argc=1)
popz.v

:[50]
pushi.e -5
pushi.e 431
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 216
conv.i.v
call.i room_goto(argc=1)
popz.v

:[52]
pushbltn.v self.room
pushi.e 232
cmp.i.v EQ
bf [54]

:[53]
pushi.e 235
conv.i.v
call.i room_goto(argc=1)
popz.v

:[54]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [56]

:[55]
pushi.e 232
conv.i.v
call.i room_goto(argc=1)
popz.v

:[56]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [58]

:[57]
pushi.e 242
conv.i.v
call.i room_goto(argc=1)
popz.v

:[58]
pushbltn.v self.room
pushi.e 242
cmp.i.v EQ
bf [60]

:[59]
pushi.e 141
conv.i.v
call.i room_goto(argc=1)
popz.v

:[60]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [62]

:[61]
pushi.e 261
conv.i.v
call.i room_goto(argc=1)
popz.v

:[62]
pushbltn.v self.room
pushi.e 261
cmp.i.v EQ
bf [64]

:[63]
pushi.e 246
conv.i.v
call.i room_goto(argc=1)
popz.v

:[64]
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [66]

:[65]
pushi.e 44
conv.i.v
call.i room_goto(argc=1)
popz.v

:[66]
pushbltn.v self.room
pushi.e 44
cmp.i.v EQ
bf [68]

:[67]
pushi.e 43
conv.i.v
call.i room_goto(argc=1)
popz.v

:[68]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [70]

:[69]
pushi.e 314
conv.i.v
call.i room_goto(argc=1)
popz.v

:[70]
pushbltn.v self.room
pushi.e 80
cmp.i.v EQ
bf [72]

:[71]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[72]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [74]

:[73]
pushi.e 80
conv.i.v
call.i room_goto(argc=1)
popz.v

:[74]
pushbltn.v self.room
pushi.e 217
cmp.i.v EQ
bf [76]

:[75]
pushi.e 230
conv.i.v
call.i room_goto(argc=1)
popz.v

:[76]
pushbltn.v self.room
pushi.e 230
cmp.i.v EQ
bf [78]

:[77]
pushi.e 217
conv.i.v
call.i room_goto(argc=1)
popz.v

:[78]
pushbltn.v self.room
pushi.e 269
cmp.i.v EQ
bf [end]

:[79]
pushi.e 268
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]