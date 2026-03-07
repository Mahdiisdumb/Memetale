.localvar 0 arguments

:[0]
pushbltn.v self.room
pop.v.v global.currentroom
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushbltn.v self.room
pushi.e 5
cmp.i.v EQ
bf [2]

:[1]
pushi.e 307
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 1
pop.v.i self.room_persistent

:[2]
pushbltn.v self.room
pushi.e 77
cmp.i.v EQ
bf [4]

:[3]
pushi.e 317
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
pushi.e 1309
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 318
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]