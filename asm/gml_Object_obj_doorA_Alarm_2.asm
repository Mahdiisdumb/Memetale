.localvar 0 arguments

:[0]
pushi.e 1
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
pushi.e 236
cmp.i.v NEQ
bf [2]

:[1]
pushbltn.v self.room
call.i room_next(argc=1)
call.i room_goto(argc=1)
popz.v
b [end]

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 240
conv.i.v
call.i room_goto(argc=1)
popz.v
b [end]

:[4]
call.i room_goto_next(argc=0)
popz.v

:[end]