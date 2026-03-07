.localvar 0 arguments

:[0]
pushbltn.v self.room
pop.v.v global.currentroom
pushi.e 1
pop.v.i self.room_persistent
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.f
push.d -0.25
push.v self.f
conv.v.i
pop.v.d [stacktop]self.tspeed
push.v self.myroom
call.i room_goto(argc=1)
popz.v

:[end]