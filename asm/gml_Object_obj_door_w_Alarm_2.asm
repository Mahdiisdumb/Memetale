.localvar 0 arguments

:[0]
pushi.e 23
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
pushi.e 73
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
bf [4]

:[3]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [6]

:[5]
pushi.e 119
conv.i.v
call.i room_goto(argc=1)
popz.v

:[6]
pushbltn.v self.room
pushi.e 119
cmp.i.v EQ
bf [8]

:[7]
pushi.e 116
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
pushi.e 97
cmp.i.v EQ
bf [14]

:[13]
pushi.e 100
conv.i.v
call.i room_goto(argc=1)
popz.v

:[14]
pushbltn.v self.room
pushi.e 100
cmp.i.v EQ
bf [end]

:[15]
pushi.e 97
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]