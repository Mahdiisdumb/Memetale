.localvar 0 arguments

:[0]
pushi.e 175
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 270
conv.i.v
push.d 0.05
conv.d.v
pushi.e 90
conv.i.v
push.d 0.2
conv.d.v
pushi.e -45
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
pushi.e 133
conv.i.v
call.i script_execute(argc=12)
popz.v
pushi.e 175
conv.i.v
pushi.e 5
conv.i.v
pushi.e -1
conv.i.v
pushi.e 4
conv.i.v
pushi.e 270
conv.i.v
push.d 0.05
conv.d.v
pushi.e 90
conv.i.v
push.d 0.2
conv.d.v
pushi.e -45
conv.i.v
pushi.e 0
conv.i.v
pushi.e -40
conv.i.v
pushi.e 133
conv.i.v
call.i script_execute(argc=12)
popz.v
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]