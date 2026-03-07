.localvar 0 arguments

:[0]
pushi.e 155
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_alpha
pushi.e 747
conv.i.v
push.v self.y
push.v self.x
pushi.e 2
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 747
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 747
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 2
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 747
conv.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 747
conv.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 747
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 50
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]