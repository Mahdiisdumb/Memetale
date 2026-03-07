.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.gravity
push.d -0.2
pop.v.d self.vspeed
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.dink
pushi.e 1
add.i.v
pop.v.v self.dink
push.v self.yprevious
pop.v.v self.y
push.v self.dink
pushi.e 3
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]