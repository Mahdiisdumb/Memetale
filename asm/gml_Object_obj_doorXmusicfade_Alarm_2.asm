.localvar 0 arguments

:[0]
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
push.v self.x
pushi.e 1000
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 311
conv.i.v
call.i room_goto(argc=1)
popz.v

:[5]
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushbltn.v self.room_width
pushi.e 80
sub.i.v
cmp.v.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 81
conv.i.v
call.i room_goto(argc=1)
popz.v

:[10]
pushbltn.v self.room
pushi.e 81
cmp.i.v EQ
bf [12]

:[11]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[12]
pushbltn.v self.room
pushi.e 65
cmp.i.v EQ
bf [14]

:[13]
pushi.e 265
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[14]
pushbltn.v self.room
pushi.e 265
cmp.i.v EQ
bf [16]

:[15]
pushi.e 65
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[16]
pushbltn.v self.room
pushi.e 99
cmp.i.v EQ
bf [18]

:[17]
pushi.e 116
conv.i.v
call.i room_goto(argc=1)
popz.v

:[18]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [20]

:[19]
pushi.e 99
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushbltn.v self.room
pushi.e 124
cmp.i.v EQ
bf [22]

:[21]
pushi.e 312
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
pushbltn.v self.room
pushi.e 182
cmp.i.v EQ
bf [24]

:[23]
pushi.e 313
conv.i.v
call.i room_goto(argc=1)
popz.v

:[24]
pushbltn.v self.room
pushi.e 181
cmp.i.v EQ
bf [26]

:[25]
pushi.e 187
conv.i.v
call.i room_goto(argc=1)
popz.v

:[26]
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [28]

:[27]
pushi.e 181
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushbltn.v self.room
pushi.e 188
cmp.i.v EQ
bf [30]

:[29]
pushi.e 183
conv.i.v
call.i room_goto(argc=1)
popz.v

:[30]
pushbltn.v self.room
pushi.e 183
cmp.i.v EQ
bf [32]

:[31]
pushi.e 188
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
pushbltn.v self.room
pushi.e 220
cmp.i.v EQ
bf [34]

:[33]
pushi.e 226
conv.i.v
call.i room_goto(argc=1)
popz.v

:[34]
pushbltn.v self.room
pushi.e 226
cmp.i.v EQ
bf [36]

:[35]
pushi.e 220
conv.i.v
call.i room_goto(argc=1)
popz.v

:[36]
pushbltn.v self.room
pushi.e 232
cmp.i.v EQ
bf [38]

:[37]
pushi.e 235
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
pushbltn.v self.room
pushi.e 235
cmp.i.v EQ
bf [40]

:[39]
pushi.e 232
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
pushbltn.v self.room
pushi.e 128
cmp.i.v EQ
bf [42]

:[41]
pushi.e 315
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
pushbltn.v self.room
pushi.e 335
cmp.i.v EQ
bf [44]

:[43]
pushi.e 76
conv.i.v
call.i room_goto(argc=1)
popz.v

:[44]
pushbltn.v self.room
pushi.e 76
cmp.i.v EQ
bf [end]

:[45]
pushi.e 335
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]