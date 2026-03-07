.localvar 0 arguments

:[0]
push.v self.cym
call.i caster_free(argc=1)
popz.v
pushbltn.v self.room
pushi.e 43
cmp.i.v EQ
bf [2]

:[1]
pushi.e 325
conv.i.v
call.i room_goto(argc=1)
popz.v

:[2]
pushbltn.v self.room
pushi.e 238
cmp.i.v EQ
bf [end]

:[3]
pushi.e 239
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]