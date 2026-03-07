.localvar 0 arguments

:[0]
pushi.e 731
pushenv [3]

:[1]
pushi.e 732
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 732.image_blend
pop.v.v self.image_blend

:[3]
popenv [1]
push.v self.crit
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 118
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]