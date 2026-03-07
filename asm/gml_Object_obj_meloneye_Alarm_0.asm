.localvar 0 arguments

:[0]
pushi.e 526
conv.i.v
push.v self.y
push.v self.rsin
add.v.v
push.v self.x
push.v self.ssin
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]