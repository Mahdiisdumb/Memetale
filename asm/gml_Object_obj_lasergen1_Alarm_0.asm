.localvar 0 arguments

:[0]
pushi.e 175
conv.i.v
pushi.e -12
conv.i.v
pushi.e -8
conv.i.v
push.d -0.6
conv.d.v
pushi.e 270
conv.i.v
push.d 0.2
conv.d.v
push.v 744.y
pushi.e 80
add.i.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 132
conv.i.v
call.i script_execute(argc=11)
popz.v
push.v self.firingspeed
pushi.e 2
mul.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]