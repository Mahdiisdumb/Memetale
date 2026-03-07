.localvar 0 arguments

:[0]
pushi.e 25
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 235
conv.i.v
push.v self.y
pushi.e 46
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]