.localvar 0 arguments

:[0]
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 318
conv.i.v
push.v self.y
pushi.e 120
sub.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]