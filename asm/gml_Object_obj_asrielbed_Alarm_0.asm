.localvar 0 arguments

:[0]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i global.phasing
pushi.e 0
pop.v.i 2.solid
pushi.e 1576
pushenv [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i path_start(argc=4)
popz.v

:[2]
popenv [1]
pushi.e 1
pop.v.i self.jump
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact

:[end]