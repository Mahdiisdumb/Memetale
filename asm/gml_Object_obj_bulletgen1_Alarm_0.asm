.localvar 0 arguments

:[0]
pushi.e 175
conv.i.v
pushi.e 18
conv.i.v
pushi.e 6
conv.i.v
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e 270
conv.i.v
push.d 0.4
conv.d.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 128
conv.i.v
call.i script_execute(argc=11)
popz.v
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]