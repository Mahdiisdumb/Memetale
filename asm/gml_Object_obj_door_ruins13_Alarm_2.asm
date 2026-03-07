.localvar 0 arguments
.localvar 1 dosave 6111

:[0]
pushi.e 24
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
pushi.e 19
cmp.i.v EQ
bf [2]

:[1]
pushi.e 21
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 21
cmp.i.v EQ
bf [4]

:[3]
pushi.e 19
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 27
cmp.i.v EQ
bf [6]

:[5]
pushi.e 23
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 28
cmp.i.v EQ
bf [8]

:[7]
pushi.e 31
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 31
cmp.i.v EQ
bf [10]

:[9]
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 32
cmp.i.v EQ
bf [14]

:[11]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.currentsong2
call.i caster_free(argc=1)
popz.v

:[13]
pushi.e 38
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v self.room
pushi.e 38
cmp.i.v EQ
bf [16]

:[15]
pushi.e 32
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v self.room
pushi.e 33
cmp.i.v EQ
bf [18]

:[17]
pushi.e 37
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v self.room
pushi.e 37
cmp.i.v EQ
bf [20]

:[19]
pushi.e 33
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v self.room
pushi.e 240
cmp.i.v EQ
bf [22]

:[21]
pushi.e 236
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 232
cmp.i.v EQ
bf [24]

:[23]
pushi.e 235
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [26]

:[25]
pushi.e 232
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v self.room
pushi.e 221
cmp.i.v EQ
bf [28]

:[27]
pushi.e 225
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [30]

:[29]
pushi.e 221
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [32]

:[31]
pushi.e 69
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [34]

:[33]
pushi.e 66
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v self.room
pushi.e 66
cmp.i.v EQ
bf [36]

:[35]
pushi.e 63
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [38]

:[37]
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [40]

:[39]
pushi.e 95
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
pushbltn.v self.room
pushi.e 99
cmp.i.v EQ
bf [42]

:[41]
pushi.e 123
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v self.room
pushi.e 123
cmp.i.v EQ
bf [44]

:[43]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[44]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [46]

:[45]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[46]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [48]

:[47]
pushi.e 176
conv.i.v
call.i room_goto(argc=1)
popz.v

:[48]
pushbltn.v self.room
pushi.e 176
cmp.i.v EQ
bf [50]

:[49]
pushi.e 171
conv.i.v
call.i room_goto(argc=1)
popz.v

:[50]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [52]

:[51]
pushi.e 187
conv.i.v
call.i room_goto(argc=1)
popz.v

:[52]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [54]

:[53]
pushi.e 181
conv.i.v
call.i room_goto(argc=1)
popz.v

:[54]
pushbltn.v self.room
pushi.e 182
cmp.i.v EQ
bf [56]

:[55]
pushi.e 313
conv.i.v
call.i room_goto(argc=1)
popz.v

:[56]
pushbltn.v self.room
pushi.e 205
cmp.i.v EQ
bf [58]

:[57]
pushi.e 198
conv.i.v
call.i room_goto(argc=1)
popz.v

:[58]
pushbltn.v self.room
pushi.e 198
cmp.i.v EQ
bf [60]

:[59]
pushi.e 205
conv.i.v
call.i room_goto(argc=1)
popz.v

:[60]
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bf [62]

:[61]
pushi.e 204
conv.i.v
call.i room_goto(argc=1)
popz.v

:[62]
pushbltn.v self.room
pushi.e 204
cmp.i.v EQ
bf [64]

:[63]
pushi.e 196
conv.i.v
call.i room_goto(argc=1)
popz.v

:[64]
pushbltn.v self.room
pushi.e 199
cmp.i.v EQ
bf [66]

:[65]
pushi.e 206
conv.i.v
call.i room_goto(argc=1)
popz.v

:[66]
pushbltn.v self.room
pushi.e 201
cmp.i.v EQ
bf [68]

:[67]
pushi.e 207
conv.i.v
call.i room_goto(argc=1)
popz.v

:[68]
pushbltn.v self.room
pushi.e 206
cmp.i.v EQ
bf [70]

:[69]
pushi.e 199
conv.i.v
call.i room_goto(argc=1)
popz.v

:[70]
pushbltn.v self.room
pushi.e 207
cmp.i.v EQ
bf [72]

:[71]
pushi.e 201
conv.i.v
call.i room_goto(argc=1)
popz.v

:[72]
pushbltn.v self.room
pushi.e 200
cmp.i.v EQ
bf [74]

:[73]
pushi.e 208
conv.i.v
call.i room_goto(argc=1)
popz.v

:[74]
pushbltn.v self.room
pushi.e 208
cmp.i.v EQ
bf [76]

:[75]
pushi.e 200
conv.i.v
call.i room_goto(argc=1)
popz.v

:[76]
pushbltn.v self.room
pushi.e 202
cmp.i.v EQ
bf [78]

:[77]
pushi.e 209
conv.i.v
call.i room_goto(argc=1)
popz.v

:[78]
pushbltn.v self.room
pushi.e 209
cmp.i.v EQ
bf [80]

:[79]
pushi.e 202
conv.i.v
call.i room_goto(argc=1)
popz.v

:[80]
pushbltn.v self.room
pushi.e 268
cmp.i.v EQ
bf [82]

:[81]
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[82]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [84]

:[83]
pushi.e 94
conv.i.v
call.i room_goto(argc=1)
popz.v

:[84]
pushbltn.v self.room
pushi.e 94
cmp.i.v EQ
bf [end]

:[85]
pushi.e 0
pop.v.i self.gox
pushi.e 0
pop.v.i self.fsx
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 66
cmp.i.v EQ
bf [93]

:[86]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [93]

:[87]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fsx
pushi.e 0
pop.v.i local.dosave
push.v self.fsx
pushi.e 66
cmp.i.v EQ
bf [89]

:[88]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 66
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 1
pop.v.i self.gox
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.flag
pushi.e 0
conv.i.v
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 1
pop.v.i local.dosave

:[92]
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[93]
push.v self.gox
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
pushi.e 268
conv.i.v
call.i room_goto(argc=1)
popz.v

:[95]
push.v self.gox
pushi.e 0
cmp.i.v EQ
bf [end]

:[96]
pushi.e 95
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]