.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[1]
push.v self.check
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 1576.inwater
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [7]

:[5]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[7]
pushi.e 0
pop.v.i self.check

:[end]