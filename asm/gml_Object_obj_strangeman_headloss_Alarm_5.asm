.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.trueindex
pushi.e 535
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 15
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.atimer

:[end]