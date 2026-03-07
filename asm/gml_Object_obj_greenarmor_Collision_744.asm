.localvar 0 arguments

:[0]
push.v self.inv
pushi.e 0
cmp.i.v LTE
bf [end]

:[1]
pushi.e 28
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.g
pushi.e 21
sub.i.v
pop.v.v self.g
push.v self.r
pushi.e 21
add.i.v
pop.v.v self.r
pushi.e 20
pop.v.i self.inv

:[end]