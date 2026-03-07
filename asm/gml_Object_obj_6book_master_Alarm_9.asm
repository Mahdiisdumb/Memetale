.localvar 0 arguments

:[0]
pushi.e 380
pop.v.i self.ry
pushi.e 430
conv.i.v
pushi.e 100
conv.i.v
call.i choose(argc=2)
pop.v.v self.rx
pushi.e 1628
conv.i.v
push.v self.ry
push.v self.rx
call.i instance_create(argc=3)
popz.v
pushi.e 45
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 9
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]