.localvar 0 arguments

:[0]
pushi.e 143
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 143
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 453
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 50
add.i.v
call.i instance_create(argc=3)
popz.v

:[end]