.localvar 0 arguments

:[0]
pushi.e 21
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
pushi.e 74
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 74
cmp.i.v EQ
bf [4]

:[3]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 273
cmp.i.v EQ
bf [6]

:[5]
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 97
cmp.i.v EQ
bf [8]

:[7]
pushi.e 273
conv.i.v
call.i room_goto(argc=1)
popz.v

:[8]
pushbltn.v self.room
pushi.e 148
cmp.i.v EQ
bf [10]

:[9]
pushi.e 151
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 151
cmp.i.v EQ
bf [12]

:[11]
pushi.e 148
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushbltn.v self.room
pushi.e 204
cmp.i.v EQ
bf [14]

:[13]
pushi.e 200
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v self.room
pushi.e 200
cmp.i.v EQ
bf [16]

:[15]
pushi.e 204
conv.i.v
call.i room_goto(argc=1)
popz.v

:[16]
pushbltn.v self.room
pushi.e 196
cmp.i.v EQ
bf [18]

:[17]
pushi.e 203
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v self.room
pushi.e 203
cmp.i.v EQ
bf [20]

:[19]
pushi.e 196
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v self.room
pushi.e 254
cmp.i.v EQ
bf [22]

:[21]
pushi.e 260
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 260
cmp.i.v EQ
bf [24]

:[23]
pushi.e 254
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 210
cmp.i.v EQ
bf [26]

:[25]
pushi.e 189
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v self.room
pushi.e 189
cmp.i.v EQ
bf [28]

:[27]
pushi.e 210
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 268
cmp.i.v EQ
bf [end]

:[29]
pushi.e 95
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]