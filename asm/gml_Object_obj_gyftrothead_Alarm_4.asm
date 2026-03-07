.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.hspeed
pushi.e 40
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 239
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.hspeed
pop.v.v 239.hspeed

:[end]