.localvar 0 arguments

:[0]
pushi.e 22
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
pushi.e 75
cmp.i.v EQ
bf [2]

:[1]
pushi.e 68
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 116
cmp.i.v EQ
bf [4]

:[3]
pushi.e 122
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushi.e 122
cmp.i.v EQ
bf [end]

:[5]
pushi.e 116
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]