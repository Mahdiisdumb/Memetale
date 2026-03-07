.localvar 0 arguments

:[0]
push.v self.direction
pushi.e 6
add.i.v
pop.v.v self.direction
pushi.e 612
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 93
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]