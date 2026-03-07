.localvar 0 arguments

:[0]
pushi.e 20
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
pushi.e 68
cmp.i.v EQ
bf [2]

:[1]
pushi.e 71
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 71
cmp.i.v EQ
bf [4]

:[3]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 95
cmp.i.v EQ
bf [6]

:[5]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [8]

:[7]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 99
cmp.i.v EQ
bf [10]

:[9]
pushi.e 95
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 101
cmp.i.v EQ
bf [12]

:[11]
pushi.e 104
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushbltn.v self.room
pushi.e 104
cmp.i.v EQ
bf [14]

:[13]
pushi.e 101
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [16]

:[15]
pushi.e 124
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v self.room
pushi.e 124
cmp.i.v EQ
bf [18]

:[17]
pushi.e 116
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [20]

:[19]
pushi.e 153
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v self.room
pushi.e 162
cmp.i.v EQ
bf [22]

:[21]
pushi.e 159
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 159
cmp.i.v EQ
bf [24]

:[23]
pushi.e 162
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 153
cmp.i.v EQ
bf [26]

:[25]
pushi.e 148
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v self.room
pushi.e 155
cmp.i.v EQ
bf [28]

:[27]
pushi.e 148
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [30]

:[29]
pushi.e 174
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v self.room
pushi.e 174
cmp.i.v EQ
bf [32]

:[31]
pushi.e 171
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [34]

:[33]
pushi.e 250
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v self.room
pushi.e 250
cmp.i.v EQ
bf [36]

:[35]
pushi.e 246
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushbltn.v self.room
pushi.e 251
cmp.i.v EQ
bf [38]

:[37]
pushi.e 254
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v self.room
pushi.e 254
cmp.i.v EQ
bf [40]

:[39]
pushi.e 251
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bf [42]

:[41]
pushi.e 214
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v self.room
pushi.e 214
cmp.i.v EQ
bf [44]

:[43]
pushi.e 139
conv.i.v
call.i room_goto(argc=1)
popz.v

:[44]
pushbltn.v self.room
pushi.e 78
cmp.i.v EQ
bf [46]

:[45]
pushi.e 76
conv.i.v
call.i room_goto(argc=1)
popz.v

:[46]
pushbltn.v self.room
pushi.e 79
cmp.i.v EQ
bf [48]

:[47]
pushi.e 76
conv.i.v
call.i room_goto(argc=1)
popz.v

:[48]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [end]

:[49]
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 1
cmp.i.v LTE
bf [51]

:[50]
pushi.e 79
conv.i.v
call.i room_goto(argc=1)
popz.v
b [end]

:[51]
pushi.e 78
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]