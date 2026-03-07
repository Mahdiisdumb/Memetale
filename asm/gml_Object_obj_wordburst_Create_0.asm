.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.size
pushi.e 1
pop.v.i self.alpha
pushi.e 0
pop.v.i self.step
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_shake(argc=3)
popz.v

:[end]