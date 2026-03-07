.localvar 0 arguments

:[0]
pushbltn.v self.room
pop.v.v global.currentroom
pushbltn.v self.room
pushi.e 118
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.room_persistent

:[2]
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 306
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]