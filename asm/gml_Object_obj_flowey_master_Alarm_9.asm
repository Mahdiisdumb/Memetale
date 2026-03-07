.localvar 0 arguments

:[0]
pushi.e 157
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.my_hp
pushi.e 40
pop.v.i global.my_inv
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i 1587.move
pushi.e 5
pushi.e 1587
pushi.e 5
pop.v.i [array]self.alarm
push.v self.destroyer
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 20
pushi.e 1587
pushi.e 5
pop.v.i [array]self.alarm

:[2]
push.v self.destroyer
pushi.e 30
cmp.i.v GT
bf [end]

:[3]
pushi.e 1
pop.v.i global.my_hp
pushi.e 0
pop.v.i 1587.move
pushi.e -1
pushi.e 1587
pushi.e 5
pop.v.i [array]self.alarm

:[end]