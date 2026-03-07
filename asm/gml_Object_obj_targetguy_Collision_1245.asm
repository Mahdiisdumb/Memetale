.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.defeat
pushi.e 31
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 1246
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e 60
pop.v.i 1246.buffer
pushi.e 1
pop.v.i 1246.win
pushi.e 30
pushi.e 1246
pushi.e 2
pop.v.i [array]self.alarm

:[end]