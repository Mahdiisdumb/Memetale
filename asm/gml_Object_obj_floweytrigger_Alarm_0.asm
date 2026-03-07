.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.room_persistent
pushi.e 1
pop.v.i global.plot
pushi.e 42
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 144
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]