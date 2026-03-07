.localvar 0 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.lit
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v 1576.x
push.v self.x
pushi.e 20
sub.i.v
cmp.v.v GT
bf [7]

:[6]
push.v 1576.x
push.v self.x
pushi.e 50
add.i.v
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 1
pop.v.i self.lit
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2243
pop.v.i self.sprite_index
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [end]

:[10]
pushi.e 2244
pop.v.i self.sprite_index

:[end]