.localvar 0 arguments

:[0]
push.v self.memoryx
pop.v.v 1576.x
push.v self.memoryy
pop.v.v 1576.y
push.v 1576.y
pushi.e 134
cmp.i.v GT
bf [2]

:[1]
push.v 1576.x
pushi.e 145
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 134
pop.v.i 1576.y

:[5]
pushi.e 0
pop.v.i self.shocking
pushi.e 0
pop.v.i global.interact
pushi.e 24
conv.i.v
call.i snd_stop(argc=1)
popz.v

:[end]