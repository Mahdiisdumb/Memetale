.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1623
conv.i.v
pushi.e -100
conv.i.v
pushbltn.v self.room_width
push.d 0.5
mul.d.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -220
conv.i.v
pushbltn.v self.room_width
pushi.e 0
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -220
conv.i.v
pushbltn.v self.room_width
pushi.e 1
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -500
conv.i.v
pushbltn.v self.room_width
push.d 0.5
mul.d.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -620
conv.i.v
pushbltn.v self.room_width
pushi.e 0
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -620
conv.i.v
pushbltn.v self.room_width
pushi.e 1
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -900
conv.i.v
pushbltn.v self.room_width
push.d 0.5
mul.d.v
call.i instance_create(argc=3)
pop.v.v self.lg
push.v self.lg
conv.v.i
pushenv [3]

:[2]
pushi.e 6
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
pushi.e 1623
conv.i.v
pushi.e -1020
conv.i.v
pushbltn.v self.room_width
pushi.e 0
mul.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1623
conv.i.v
pushi.e -1020
conv.i.v
pushbltn.v self.room_width
pushi.e 1
mul.i.v
call.i instance_create(argc=3)
popz.v

:[end]