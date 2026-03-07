.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
push.d 0.1
pop.v.d self.image_xscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.saved
pushi.e 0
pop.v.i self.memorymode
pushi.e 1
pop.v.i self.active
pushi.e 14
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 343
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 343
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]