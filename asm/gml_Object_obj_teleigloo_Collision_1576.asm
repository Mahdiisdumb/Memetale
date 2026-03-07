.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 50
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.x
pushi.e 1000
cmp.i.v LT
bf [6]

:[5]
pushi.e 5
pop.v.i self.con

:[6]
push.v self.x
pushi.e 1000
cmp.i.v GT
bf [8]

:[7]
pushi.e 10
pop.v.i self.con

:[8]
pushi.e 1
pop.v.i global.interact

:[end]