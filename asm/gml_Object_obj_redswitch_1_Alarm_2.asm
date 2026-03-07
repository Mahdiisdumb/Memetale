.localvar 0 arguments

:[0]
pushi.e 135
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
pop.v.i global.interact
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]