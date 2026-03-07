.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.talkedto
pushi.e 1
pop.v.i self.image_index
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 25
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]