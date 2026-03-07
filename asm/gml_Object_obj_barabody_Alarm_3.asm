.localvar 0 arguments

:[0]
push.v self.shaker
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 318
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 55
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]