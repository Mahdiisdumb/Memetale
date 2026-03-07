.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.image_index
pushi.e 644
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 40
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]